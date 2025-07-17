import 'package:fitzen/core/constant/validation_messages.dart';

/// Parses and cleans raw specializations input into a list of strings.
List<String> parseSpecializations(String rawInput) {
  return rawInput
      .split(RegExp(ValidationConstants.parseSpecializationsRegex))
      .map((String e) => e.trim())
      .where((String e) => e.isNotEmpty)
      .toList();
}
