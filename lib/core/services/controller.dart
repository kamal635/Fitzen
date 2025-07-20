import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_notifier.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// -------------------------------------------------------------------------
final AutoDisposeProvider<TextEditingController> fristNameControllerProvider =
    Provider.autoDispose<TextEditingController>((Ref ref) {
      final TextEditingController controller = TextEditingController(
        text: ref.read(trainerFormProvider).firstName,
      );

      ref.onDispose(controller.dispose);

      return controller;
    });

/// -------------------------------------------------------------------------
final AutoDisposeProvider<TextEditingController> lastNameControllerProvider =
    Provider.autoDispose<TextEditingController>((Ref ref) {
      final TextEditingController controller = TextEditingController(
        text: ref.read(trainerFormProvider).lastName,
      );

      ref.onDispose(controller.dispose);

      return controller;
    });

/// -------------------------------------------------------------------------
final AutoDisposeProvider<TextEditingController> emailControllerProvider =
    Provider.autoDispose<TextEditingController>((Ref ref) {
      final TextEditingController controller = TextEditingController(
        text: ref.read(trainerFormProvider).email,
      );

      ref.onDispose(controller.dispose);

      return controller;
    });

/// -------------------------------------------------------------------------
final AutoDisposeProvider<TextEditingController> passwordControllerProvider =
    Provider.autoDispose<TextEditingController>((Ref ref) {
      final TextEditingController controller = TextEditingController(
        text: ref.read(trainerFormProvider).password,
      );

      ref.onDispose(controller.dispose);

      return controller;
    });

/// -------------------------------------------------------------------------
final AutoDisposeProvider<TextEditingController>
confirmPasswordControllerProvider = Provider.autoDispose<TextEditingController>(
  (Ref ref) {
    final TextEditingController controller = TextEditingController(
      text: ref.read(trainerFormProvider).confirmPassword,
    );

    ref.onDispose(controller.dispose);

    return controller;
  },
);

/// -------------------------------------------------------------------------
final AutoDisposeProvider<TextEditingController>
certificationNameControllerProvider =
    Provider.autoDispose<TextEditingController>(
      (Ref ref) {
        final TextEditingController controller = TextEditingController(
          text: ref.read(trainerFormProvider).certificationName,
        );

        ref.onDispose(controller.dispose);

        return controller;
      },
    );

/// -------------------------------------------------------------------------
final AutoDisposeProvider<TextEditingController> phoneNumberControllerProvider =
    Provider.autoDispose<TextEditingController>(
      (Ref ref) {
        final TextEditingController controller = TextEditingController(
          text: ref.read(trainerFormProvider).phoneNumber?.number,
        );

        ref.onDispose(controller.dispose);

        return controller;
      },
    );

/// -------------------------------------------------------------------------
final AutoDisposeProvider<TextEditingController>
specializationsControllerProvider = Provider.autoDispose<TextEditingController>(
  (Ref ref) {
    final TextEditingController controller = TextEditingController(
      text: ref.read(trainerFormProvider).rawSpecializationsInput,
    );

    ref.onDispose(controller.dispose);

    return controller;
  },
);

/// -------------------------------------------------------------------------
final AutoDisposeProvider<TextEditingController>
uploadCertificationControllerProvider =
    Provider.autoDispose<TextEditingController>(
      (Ref ref) {
        final TextEditingController controller = TextEditingController(
          text: ref.read(trainerFormProvider).fileName,
        );

        ref.onDispose(controller.dispose);

        return controller;
      },
    );

/// -------------------------------------------------------------------------
final AutoDisposeProvider<TextEditingController>
yearsOfExperienceControllerProvider =
    Provider.autoDispose<TextEditingController>(
      (Ref ref) {
        final TextEditingController controller = TextEditingController(
          text: ref.read(trainerFormProvider).years,
        );

        ref.onDispose(controller.dispose);

        return controller;
      },
    );
