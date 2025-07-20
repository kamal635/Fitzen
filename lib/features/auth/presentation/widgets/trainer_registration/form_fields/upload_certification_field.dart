import 'package:fitzen/core/constant/app_icons.dart';
import 'package:fitzen/core/constant/app_strings.dart';
import 'package:fitzen/core/services/controller.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_notifier.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_state.dart';
import 'package:fitzen/features/auth/presentation/shared_widgets/text_field_auth.dart';
import 'package:fitzen/features/auth/presentation/widgets/trainer_registration/upload_document_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// It displays any validation error and updates the form state
/// when the text changes.
class UploadCertificationField extends ConsumerWidget {
  /// Creates a [UploadCertificationField] widget.
  const UploadCertificationField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Controls the text input for the uploadCertification field.
    final TextEditingController controller = ref.watch(
      uploadCertificationControllerProvider,
    );

    // Watches the validation error for the uploadCertification field.
    final String? uploadCertificationError = ref.watch(
      trainerFormProvider.select(
        (TrainerFormState e) => e.uploadCertificationError,
      ),
    );

    return TextFieldAuth(
      titleField: AppStrings.uploadCertification,
      hintText: AppStrings.uploadDocument,
      prefixIcon: AppIcons.file,
      readOnly: true,
      isCenter: true,
      textInputAction: TextInputAction.done,
      errorText: uploadCertificationError,
      controller: controller,
      widgetCenter: const UploadDocumentWidget(),
    );
  }
}
