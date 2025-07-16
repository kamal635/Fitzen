import 'package:file_picker/file_picker.dart';
import 'package:fitzen/core/constant/app_strings.dart';

/// Abstraction for file picking.
abstract class IFilePickerService {
  Future<FilePickerResult?> pickPdf();
}

// / Real implementation for production.
class FilePickerService implements IFilePickerService {
  @override
  Future<FilePickerResult?> pickPdf() {
    return FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: [AppStrings.extensionPDF],
    );
  }
}
