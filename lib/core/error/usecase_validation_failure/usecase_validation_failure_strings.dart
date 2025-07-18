/// Validation failure messages for use cases.
abstract class UseCaseValidationFailureStrings {
  /// Error message when the certificate is not a PDF file.
  static const String certificateMustBePdf = 'Certificate must be a PDF file.';

  /// Error message when the certificate file size exceeds the limit.
  static const String certificateFileTooLarge =
      'Certificate file size is too large.';

  /// The required file extension for certificates.
  static const String pdfExtension = '.pdf';
}
