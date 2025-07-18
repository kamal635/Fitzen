import 'package:fitzen/core/constant/validation_messages.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_notifier.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl_phone_field/phone_number.dart';

void main() {
  late ProviderContainer container;

  setUp(() {
    container = ProviderContainer();
  });

  group('update contact & experience', () {
    //------------------- phone number -------------------
    test('returns state holding update Phone Number', () {
      final TrainerFormNotifier notifier = container.read(
        trainerFormProvider.notifier,
      );

      final PhoneNumber phoneNumber = PhoneNumber(
        countryISOCode: 'US',
        countryCode: '+1',
        number: '9651254963',
      );

      notifier.updatePhoneNumber(phoneNumber);
      final TrainerFormState state = container.read(trainerFormProvider);

      expect(state.phoneNumber, equals(phoneNumber));
    });

    //------------------- Years Of Experience -------------------
    test('returns state holding update Years Of Experience', () {
      container
          .read(
            trainerFormProvider.notifier,
          )
          .updateYearsOfExperience('5');
      final TrainerFormState state = container.read(trainerFormProvider);

      expect(state.years, '5');
    });

    //------------------- Specializations -------------------
    test('returns state holding update Specializations', () {
      container
          .read(
            trainerFormProvider.notifier,
          )
          .updateSpecializations('yoga , cardio');
      final TrainerFormState state = container.read(trainerFormProvider);

      expect(state.specializations, equals(<String>['yoga', 'cardio']));
    });

    //-------------------  Step two Fields are valid -------------------
    test(
      'validateStepTwoFields sets all errors to null when values are valid',
      () {
        final TrainerFormNotifier notifier = container.read(
          trainerFormProvider.notifier,
        );
        final TrainerFormState state = container.read(trainerFormProvider);

        final PhoneNumber phoneNumber = PhoneNumber(
          countryISOCode: 'US',
          countryCode: '+1',
          number: '9651254963',
        );
        notifier
          ..state = state.copyWith(
            phoneNumber: phoneNumber,
            years: '5',
            specializations: <String>['yoga', 'cardio'],
          )
          ..validateStepTwoFields();

        final TrainerFormState updateState = container.read(
          trainerFormProvider,
        );

        expect(updateState.phoneNumberError, null);
        expect(updateState.yearsOfExperienceError, null);
        expect(updateState.specializationsError, null);
      },
    );

    //-------------------  Step two Fields are invalid -------------------
    test('validateStepTwoFields sets errors  when values are invalid', () {
      final TrainerFormNotifier notifier = container.read(
        trainerFormProvider.notifier,
      );
      final TrainerFormState state = container.read(trainerFormProvider);

      final PhoneNumber phoneNumber = PhoneNumber(
        countryISOCode: 'US',
        countryCode: '+1',
        number: '3',
      );
      notifier
        ..state = state.copyWith(
          phoneNumber: phoneNumber,
          years: '55',
          specializations: <String>['1', '1'],
        )
        ..validateStepTwoFields();
      final TrainerFormState updateState = container.read(trainerFormProvider);

      expect(updateState.phoneNumberError, isNotNull);
      expect(updateState.yearsOfExperienceError, isNotNull);
      expect(updateState.specializationsError, isNotNull);
    });

    //-------------------   Valid Step Two -------------------
    test(
      'validateStepTwoFields sets all errors to null when values are valid',
      () {
        final TrainerFormNotifier notifier = container.read(
          trainerFormProvider.notifier,
        );
        final TrainerFormState state = container.read(trainerFormProvider);

        notifier.state = state.copyWith();

        final TrainerFormState updateState = container.read(
          trainerFormProvider,
        );
        final bool result = notifier.isValidStepTwo(updateState);

        expect(result, isTrue);
      },
    );

    //-------------------   inValid Step Two -------------------
    test('validateStepTwoFields sets all errors when values are invalid', () {
      final TrainerFormNotifier notifier = container.read(
        trainerFormProvider.notifier,
      );
      final TrainerFormState state = container.read(trainerFormProvider);

      notifier.state = state.copyWith(
        yearsOfExperienceError: ValidationMessages.yearsOfExperienceNegative,
      );

      final TrainerFormState updateState = container.read(trainerFormProvider);
      final bool result = notifier.isValidStepTwo(updateState);

      expect(result, isFalse);
    });
  });
}
