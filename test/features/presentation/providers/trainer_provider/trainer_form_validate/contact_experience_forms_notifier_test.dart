import 'package:fitzen/core/constant/validation_messages.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl_phone_field/phone_number.dart';

void main() {
  late ProviderContainer container;

  setUp(() {
    container = ProviderContainer();
  });

  group("update contact & experience", () {
    //------------------- phone number -------------------
    test("returns state holding update Phone Number", () {
      final notifier = container.read(trainerFormProvider.notifier);

      final phoneNumber = PhoneNumber(
        countryISOCode: 'US',
        countryCode: '+1',
        number: '9651254963',
      );

      notifier.updatePhoneNumber(phoneNumber);
      final state = container.read(trainerFormProvider);

      expect(state.phoneNumber, equals(phoneNumber));
    });

    //------------------- Years Of Experience -------------------
    test("returns state holding update Years Of Experience", () {
      final notifier = container.read(trainerFormProvider.notifier);

      notifier.updateYearsOfExperience("5");
      final state = container.read(trainerFormProvider);

      expect(state.years, "5");
    });

    //------------------- Specializations -------------------
    test("returns state holding update Specializations", () {
      final notifier = container.read(trainerFormProvider.notifier);

      notifier.updateSpecializations("yoga , cardio");
      final state = container.read(trainerFormProvider);

      expect(state.specializations, equals(["yoga", "cardio"]));
    });

    //-------------------  Step two Fields are valid -------------------
    test(
      "validateStepTwoFields sets all errors to null when values are valid",
      () {
        final notifier = container.read(trainerFormProvider.notifier);
        final state = container.read(trainerFormProvider);

        final phoneNumber = PhoneNumber(
          countryISOCode: 'US',
          countryCode: '+1',
          number: '9651254963',
        );
        notifier.state = state.copyWith(
          phoneNumber: phoneNumber,
          years: "5",
          specializations: ["yoga", "cardio"],
        );
        notifier.validateStepTwoFields();
        final updateState = container.read(trainerFormProvider);

        expect(updateState.phoneNumberError, null);
        expect(updateState.yearsOfExperienceError, null);
        expect(updateState.specializationsError, null);
      },
    );

    //-------------------  Step two Fields are invalid -------------------
    test("validateStepTwoFields sets errors  when values are invalid", () {
      final notifier = container.read(trainerFormProvider.notifier);
      final state = container.read(trainerFormProvider);

      final phoneNumber = PhoneNumber(
        countryISOCode: 'US',
        countryCode: '+1',
        number: '3',
      );
      notifier.state = state.copyWith(
        phoneNumber: phoneNumber,
        years: "55",
        specializations: ["1", "1"],
      );

      notifier.validateStepTwoFields();
      final updateState = container.read(trainerFormProvider);

      expect(updateState.phoneNumberError, isNotNull);
      expect(updateState.yearsOfExperienceError, isNotNull);
      expect(updateState.specializationsError, isNotNull);
    });

    //-------------------   Valid Step Two -------------------
    test(
      "validateStepTwoFields sets all errors to null when values are valid",
      () {
        final notifier = container.read(trainerFormProvider.notifier);
        final state = container.read(trainerFormProvider);

        notifier.state = state.copyWith(
          phoneNumberError: null,
          yearsOfExperienceError: null,
          specializationsError: null,
        );

        final updateState = container.read(trainerFormProvider);
        final result = notifier.isValidStepTwo(updateState);

        expect(result, isTrue);
      },
    );

    //-------------------   inValid Step Two -------------------
    test("validateStepTwoFields sets all errors when values are invalid", () {
      final notifier = container.read(trainerFormProvider.notifier);
      final state = container.read(trainerFormProvider);

      notifier.state = state.copyWith(
        phoneNumberError: null,
        yearsOfExperienceError: ValidationMessages.yearsOfExperienceNegative,
        specializationsError: null,
      );

      final updateState = container.read(trainerFormProvider);
      final result = notifier.isValidStepTwo(updateState);

      expect(result, isFalse);
    });
  });
}
