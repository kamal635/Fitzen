import 'package:fitzen/core/constant/validation_messages.dart';

List<String> parseSpecializations(String rawInput) {
  return rawInput
      .split(RegExp(ValidationConstants.parseSpecializationsRegex))
      .map((e) => e.trim())
      .where((e) => e.isNotEmpty)
      .toList();
}
