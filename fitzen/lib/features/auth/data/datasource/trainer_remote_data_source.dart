import 'dart:io';
import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:fitzen/core/error/auth_failure.dart';
import 'package:fitzen/core/error/failure.dart';
import 'package:fitzen/core/error/firebase_strings/auth_failure_strings.dart';
import 'package:fitzen/core/error/firebase_strings/firebase_plugins_strings.dart';
import 'package:fitzen/core/error/firebase_strings/firebase_storage_paths.dart';
import 'package:fitzen/core/error/firebase_strings/firstore_collections_strings.dart';
import 'package:fitzen/core/error/firebase_strings/storage_failure_strings.dart';
import 'package:fitzen/core/error/firestore_failure.dart';
import 'package:fitzen/core/error/storage_failure.dart';
import 'package:fitzen/features/auth/data/models/approval_status.dart';
import 'package:fitzen/features/auth/data/models/trainer_model.dart';
import 'package:retry/retry.dart';

abstract class TrainerRemoteDataSource {
  Future<Either<Failure, TrainerModel>> registerTrainer(
    TrainerModel trainer,
    File certificate,
    String password,
  );
}

class TrainerRemoteDataSourceImpl implements TrainerRemoteDataSource {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firebaseFirestore;
  final FirebaseStorage firebaseStorage;

  TrainerRemoteDataSourceImpl({
    required this.firebaseAuth,
    required this.firebaseFirestore,
    required this.firebaseStorage,
  });

  @override
  Future<Either<Failure, TrainerModel>> registerTrainer(
    TrainerModel trainer,
    File certificate,
    String password,
  ) async {
    String? uid;
    String? certUrl;

    // ==========1: Create a new user with email & password OR sign in if already exists
    try {
      final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: trainer.emailAddress,
        password: password,
      );
      uid = userCredential.user?.uid;

      // Validate UID after user creation
      if (uid == null || uid.isEmpty) {
        log(" Auth: UID is null after creating user");
        return left(const AuthFailure.internalError());
      }
    } on FirebaseAuthException catch (e, stack1) {
      if (e.code == AuthFailureStrings.emailAlreadyInUseCode) {
        try {
          // User already exists → try to sign in instead
          final userCredential = await firebaseAuth.signInWithEmailAndPassword(
            email: trainer.emailAddress,
            password: password,
          );
          uid = userCredential.user?.uid;

          // Validate UID after sign-in
          if (uid == null || uid.isEmpty) {
            log(" Auth: UID is null after signIn with existing account");
            return left(const AuthFailure.internalError());
          }
        } on FirebaseAuthException catch (e, stack2) {
          if (e.plugin == FirebasePluginsStrings.firebaseAuth) {
            log(
              " Auth: Failed to sign in existing user, Firebase error: $e",
              stackTrace: stack2,
            );
            return left(AuthFailure.fromCode(e.code));
          } else {
            return left(AuthFailure.unknown(e.toString()));
          }
        }
      } else {
        // Handle other unexpected Firebase auth errors
        if (e.plugin == FirebasePluginsStrings.firebaseAuth) {
          log(
            " Auth: Unexpected Firebase error while creating user: $e",
            stackTrace: stack1,
          );
          return left(AuthFailure.fromCode(e.code));
        } else {
          return left(AuthFailure.unknown(e.toString()));
        }
      }
    }

    // ==========2: Upload trainer's certificate to Firebase Storage
    final ref = firebaseStorage.ref().child(
      "${FirebaseStoragePathsStrings.certificates}/$uid",
    );
    try {
      // Try to get existing certificate URL first (maybe uploaded before)
      certUrl = await ref.getDownloadURL();
    } on FirebaseException catch (e, stack1) {
      if (e.code == StorageFailureStrings.objectNotFoundCode) {
        try {
          // Certificate not found → upload it now, with retry on failure
          await retry(
            () async {
              final taskSnapshot = await ref.putFile(certificate);
              certUrl = await taskSnapshot.ref.getDownloadURL();
            },
            retryIf: (e) => e is FirebaseException,
            maxAttempts: 3,
          );

          // Validate certUrl after upload
          if (certUrl == null || certUrl!.isEmpty) {
            return left(const StorageFailure.certificateMissing());
          }
        } on FirebaseException catch (e, stack2) {
          log(
            " Storage: Failed to upload certificate, Firebase error: $e",
            stackTrace: stack2,
          );
          if (e.plugin == FirebasePluginsStrings.firebaseStorage) {
            return left(StorageFailure.fromStorage(e.code));
          } else {
            return left(StorageFailure.unknown(e.toString()));
          }
        }
      } else {
        // Handle other unexpected Firebase storage errors
        log(
          " Storage: Unexpected Firebase error while fetching certificate URL: $e",
          stackTrace: stack1,
        );
        if (e.plugin == FirebasePluginsStrings.firebaseStorage) {
          return left(StorageFailure.fromStorage(e.code));
        } else {
          return left(StorageFailure.unknown(e.toString()));
        }
      }
    }

    // ==========3: Save trainer profile data to Firestore database
    final trainerUpdate = trainer.copyWith(
      uid: uid,
      uploadCertificationUrl: certUrl,
      isApproved: ApprovalStatus.pending,
    );
    try {
      // Check if trainer document already exists
      final docSnapshot = await firebaseFirestore
          .collection(FirestoreCollectionsStrings.trainers)
          .doc(uid)
          .get();

      if (!docSnapshot.exists) {
        try {
          // Document doesn't exist → create it with retry on failure
          await retry(
            () async {
              await firebaseFirestore
                  .collection(FirestoreCollectionsStrings.trainers)
                  .doc(uid)
                  .set(trainerUpdate.toJson());
            },
            retryIf: (e) => e is FirebaseException,
            maxAttempts: 3,
          );

          // Fetch the newly created document to confirm
          final updatedDoc = await firebaseFirestore
              .collection(FirestoreCollectionsStrings.trainers)
              .doc(uid)
              .get();

          if (!updatedDoc.exists) {
            return left(const FirestoreFailure.dataMissing());
          }

          return right(TrainerModel.fromJson(updatedDoc.data()!));
        } on FirebaseException catch (e, stack1) {
          log(
            " Firestore: Failed to create trainer document, Firebase error: $e",
            stackTrace: stack1,
          );
          if (e.plugin == FirebasePluginsStrings.cloudFirestore) {
            return left(FirestoreFailure.fromFirestore(e.code));
          } else {
            return left(FirestoreFailure.unknownFirestore(e.toString()));
          }
        }
      }

      // Document already exists → return it
      return right(TrainerModel.fromJson(docSnapshot.data()!));
    } on FirebaseException catch (e, stack2) {
      log(
        " Firestore: Failed to fetch trainer document, Firebase error: $e",
        stackTrace: stack2,
      );
      if (e.plugin == FirebasePluginsStrings.cloudFirestore) {
        return left(FirestoreFailure.fromFirestore(e.code));
      } else {
        return left(FirestoreFailure.unknownFirestore(e.toString()));
      }
    }
  }
}
