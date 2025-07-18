import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_notifier.dart';
import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../core/services/fake_file_picker_service.dart';

void main() {
  test('uploadFile updates state with picked file', () async {
    final FakeFilePickerService fakeService = FakeFilePickerService();
    final ProviderContainer container = ProviderContainer(
      overrides: <Override>[
        trainerFormProvider.overrideWith(
          (
            Ref<TrainerFormState> ref,
          ) => TrainerFormNotifier(fakeService),
        ),
      ],
    );

    final TrainerFormNotifier notifier = container.read(
      trainerFormProvider.notifier,
    );

    await notifier.uploadFile();

    final TrainerFormState state = container.read(trainerFormProvider);
    expect(state.fileCertification?.path, '/fake/path/test.pdf');
    expect(state.fileName, 'test.pdf');
  });
}
