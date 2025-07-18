import 'package:file_picker/file_picker.dart';
import 'package:fitzen/core/constant/app_strings.dart';

// Abstract class kept for future extensibility and implementation flexibility.
// ignore: one_member_abstracts, public_member_api_docs
abstract class IFilePickerService {
  /// Picks a PDF file and returns the result asynchronously.
  Future<FilePickerResult?> pickPdf();
}

/// Real implementation for production.
class FilePickerService implements IFilePickerService {
  @override
  Future<FilePickerResult?> pickPdf() {
    return FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: <String>[AppStrings.extensionPDF],
    );
  }
}
