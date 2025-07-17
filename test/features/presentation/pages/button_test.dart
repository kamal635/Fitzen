import 'package:fitzen/core/services/file_picker_service.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_notifier.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_state.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/steps/step_1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Next button is found and can be tapped', (
    WidgetTester tester,
  ) async {
    bool wasCalled = false;

    await tester.pumpWidget(
      ProviderScope(
        overrides: <Override>[
          trainerFormProvider.overrideWith((
            Ref<TrainerFormState> ref,
          ) {
            final TrainerFormNotifier notifier = TrainerFormNotifier(
              FilePickerService(),
            );
            notifier.state = notifier.state.copyWith(
              firstName: 'kamal',
              lastName: 'ibrahim',
              email: 'kamal@gmail.com',
              password: '123123',
              confirmPassword: '123123',
            );
            return notifier;
          }),
        ],
        child: MaterialApp(
          home: ScreenUtilInit(
            designSize: const Size(375, 812),
            child: Scaffold(
              body: TrainerRegistrationStepOne(
                onNext: () {
                  wasCalled = true;
                },
              ),
            ),
          ),
        ),
      ),
    );

    final Finder nextButton = find.text('Next');
    expect(nextButton, findsOneWidget);

    await tester.tap(nextButton);
    await tester.pumpAndSettle();

    expect(wasCalled, true);
  });
}
