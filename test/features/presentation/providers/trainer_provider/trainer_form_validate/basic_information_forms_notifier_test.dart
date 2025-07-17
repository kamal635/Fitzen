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

  tearDown(() {
    container.dispose();
  });
  group('update Basic Information', () {
    //-------------------  first name -------------------
    test('retutn state holding first name', () {
      container
          .read(
            trainerFormProvider.notifier,
          )
          .updateFirstName('kamal');

      final TrainerFormState state = container.read(trainerFormProvider);
      expect(state.firstName, 'kamal');
    });

    //-------------------  last name -------------------
    test('retutn state holding last name', () {
      container
          .read(
            trainerFormProvider.notifier,
          )
          .updateLastName('ibrahim');

      final TrainerFormState state = container.read(trainerFormProvider);
      expect(state.lastName, 'ibrahim');
    });

    //-------------------  email -------------------
    test('retutn state holding email', () {
      container
          .read(
            trainerFormProvider.notifier,
          )
          .updateEmail('kamal@gmail.com');

      final TrainerFormState state = container.read(trainerFormProvider);
      expect(state.email, 'kamal@gmail.com');
    });

    //-------------------  password -------------------
    test('retutn state holding password', () {
      container
          .read(
            trainerFormProvider.notifier,
          )
          .updatePassword('kamal123');

      final TrainerFormState state = container.read(trainerFormProvider);
      expect(state.password, 'kamal123');
    });

    //-------------------  confirm password -------------------
    test('retutn state holding confirm password', () {
      container
          .read(
            trainerFormProvider.notifier,
          )
          .updateConfirmPassword('alaa123');

      final TrainerFormState state = container.read(trainerFormProvider);
      expect(state.confirmPassword, 'alaa123');
    });

    //-------------------  Step One Fields are valid -------------------
    test(
      'validateStepOneFields sets all errors to null when values are valid',
      () {
        final TrainerFormNotifier notifier = container.read(
          trainerFormProvider.notifier,
        );

        final TrainerFormState state = container.read(trainerFormProvider);
        notifier
          ..state = state.copyWith(
            firstName: 'kamal',
            lastName: 'Doe',
            email: 'john.doe@example.com',
            password: 'StrongPass123',
            confirmPassword: 'StrongPass123',
          )
          ..validateStepOneFields();
        final TrainerFormState updateState = container.read(
          trainerFormProvider,
        );

        expect(updateState.firstNameError, isNull);
        expect(updateState.lastNameError, isNull);
        expect(updateState.emailError, isNull);
        expect(updateState.passwordError, isNull);
        expect(updateState.confirmPasswordError, isNull);
      },
    );
    //-------------------  Step One Fields are invalid -------------------

    test('validateStepOneFields sets errors when values are invalid', () {
      final TrainerFormNotifier notifier = container.read(
        trainerFormProvider.notifier,
      );
      final TrainerFormState state = container.read(trainerFormProvider);
      notifier
        ..state = state.copyWith(
          firstName: '',
          lastName: 'A',
          email: 'notanemail',
          password: '123',
          confirmPassword: '456',
        )
        ..validateStepOneFields();
      final TrainerFormState updateState = container.read(trainerFormProvider);

      expect(updateState.firstNameError, isNotNull);
      expect(updateState.lastNameError, isNotNull);
      expect(updateState.emailError, isNotNull);
      expect(updateState.passwordError, isNotNull);
      expect(updateState.confirmPasswordError, isNotNull);
    });

    //-------------------   Valid Step one -------------------
    test(
      'validateStepOneFields sets all errors to null when values are valid',
      () {
        final TrainerFormNotifier notifier = container.read(
          trainerFormProvider.notifier,
        );

        final TrainerFormState state = container.read(trainerFormProvider);
        notifier.state = state.copyWith();
        final TrainerFormState updateState = container.read(
          trainerFormProvider,
        );
        final bool result = notifier.isValidStepOne(updateState);

        expect(result, isTrue);
      },
    );

    //-------------------   inValid Step one -------------------
    test('validateStepOneFields sets all errors when values are invalid', () {
      final TrainerFormNotifier notifier = container.read(
        trainerFormProvider.notifier,
      );

      final TrainerFormState state = container.read(trainerFormProvider);
      notifier.state = state.copyWith(
        emailError: ValidationMessages.invalidEmailFormat,
      );
      final TrainerFormState updateState = container.read(trainerFormProvider);
      final bool result = notifier.isValidStepOne(updateState);

      expect(result, isFalse);
    });
  });
}
