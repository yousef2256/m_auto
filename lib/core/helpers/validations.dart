import 'package:m_auto/core/utils/constets/app_regex.dart';

class Validations {
  // email validator
  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty || !AppRegex.isEmail(value)) {
      return "Plese enter a valid email";
    }
    return null;
  }

  // password validator
  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty || !AppRegex.isPassword(value)) {
      return "Plese enter a valid password";
    }
    return null;
  }
}
