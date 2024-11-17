import 'app_strings.dart';

String? validator(
    String? value, String? validationString, validationCondition) {
  if (validationCondition) {
    return validationString;
  }
  return null;
}

class AppValidation {
  static String? appValidation(val) =>
      validator(val, AppStrings.appValidate, val.toString().isEmpty);

  static String? passwordValidate(val) {
    if (val.toString().isEmpty) {
      return AppStrings.appValidate;
    } else if (val!.length < 6) {
      return '';
    }
    return null;
  }
}