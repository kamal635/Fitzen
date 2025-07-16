import 'package:fitzen/features/auth/presentation/providers/trainer_provider/trainer_form_validate/trainer_form_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../core/services/fake_file_picker_service.dart';

void main() {
  test('uploadFile updates state with picked file', () async {
    final fakeService = FakeFilePickerService();
    final container = ProviderContainer(
      overrides: [
        trainerFormProvider.overrideWith(
          (ref) => TrainerFormNotifier(fakeService),
        ),
      ],
    );

    final notifier = container.read(trainerFormProvider.notifier);

    await notifier.uploadFile();

    final state = container.read(trainerFormProvider);
    expect(state.fileCertification?.path, '/fake/path/test.pdf');
    expect(state.fileName, 'test.pdf');
  });
}
