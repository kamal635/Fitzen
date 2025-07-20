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
