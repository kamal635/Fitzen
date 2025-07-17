import 'dart:io';

import 'package:fitzen/core/constant/validation_messages.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_notifier.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late ProviderContainer container;

  setUp(() {
    container = ProviderContainer();
  });

  group('update Verification & Documents', () {
    //------------------- Certification Name -------------------
    test('returns state holding update Certification Name', () {
      container
          .read(
            trainerFormProvider.notifier,
          )
          .updateCertificationName('personal trainer');

      final TrainerFormState state = container.read(trainerFormProvider);
      expect(state.certificationName, equals('personal trainer'));
    });

    //------------------- Certification File -------------------
    test('returns state holding update Certification File', () {
      final TrainerFormNotifier notifier = container.read(
        trainerFormProvider.notifier,
      );
      final File file = File('path/cert.pdf');
      notifier.updateCertificationFile(file, 'cert.pdf');

      final TrainerFormState state = container.read(trainerFormProvider);
      expect(state.fileCertification, equals(file));
      expect(state.fileName, equals('cert.pdf'));
    });

    //------------------- toggle Check Terms -------------------
    test('returns state holding toggle Check Terms', () {
      container
          .read(
            trainerFormProvider.notifier,
          )
          .toggleCheckTerms(value: true);

      final TrainerFormState state = container.read(trainerFormProvider);
      expect(state.termsAgreement, true);
    });

    //-------------------  Step Three Fields are valid -------------------
    test(
      'validateStepThreeFields sets all errors to null when values are valid',
      () {
        final TrainerFormNotifier notifier = container.read(
          trainerFormProvider.notifier,
        );
        final TrainerFormState state = container.read(trainerFormProvider);

        notifier
          ..state = state.copyWith(
            certificationName: 'personal trainer',
            fileCertification: File('path/cv.pdf'),
            termsAgreement: true,
          )
          ..validateStepThreeFields();
        final TrainerFormState updateState = container.read(
          trainerFormProvider,
        );

        expect(updateState.certificationNameError, isNull);
        expect(updateState.uploadCertificationError, isNull);
        expect(updateState.termsAgreementError, isNull);
      },
    );
    //-------------------  Step Three Fields are invalid -------------------

    test('validateStepThreeFields sets errors when values are invalid', () {
      final TrainerFormNotifier notifier = container.read(
        trainerFormProvider.notifier,
      );
      final TrainerFormState state = container.read(trainerFormProvider);

      notifier
        ..state = state.copyWith(
          certificationName: '1',
          termsAgreement: false,
        )
        ..validateStepThreeFields();
      final TrainerFormState updateState = container.read(trainerFormProvider);

      expect(updateState.certificationNameError, isNotNull);
      expect(updateState.uploadCertificationError, isNotNull);
      expect(updateState.termsAgreementError, isNotNull);
    });

    //-------------------   Valid Step Three -------------------
    test(
      'validateStepThreeFields sets all errors to null when values are valid',
      () {
        final TrainerFormNotifier notifier = container.read(
          trainerFormProvider.notifier,
        );
        final TrainerFormState state = container.read(trainerFormProvider);

        notifier.state = state.copyWith();

        final TrainerFormState updateState = container.read(
          trainerFormProvider,
        );
        final bool result = notifier.isValidStepThree(updateState);

        expect(result, isTrue);
      },
    );

    //-------------------   inValid Step Three -------------------
    test('validateStepThreeFields sets all errors when values are invalid', () {
      final TrainerFormNotifier notifier = container.read(
        trainerFormProvider.notifier,
      );
      final TrainerFormState state = container.read(trainerFormProvider);

      notifier.state = state.copyWith(
        termsAgreementError: ValidationMessages.termsAgreement,
      );

      final TrainerFormState updateState = container.read(trainerFormProvider);
      final bool result = notifier.isValidStepThree(updateState);

      expect(result, isFalse);
    });
  });
}
