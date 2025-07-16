import 'package:file_picker/file_picker.dart';
import 'package:fitzen/core/services/file_picker_service.dart';

class FakeFilePickerService implements IFilePickerService {
  @override
  Future<FilePickerResult?> pickPdf() async {
    return FilePickerResult([
      PlatformFile(name: 'test.pdf', path: '/fake/path/test.pdf', size: 12345),
    ]);
  }
}
