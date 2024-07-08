import 'package:travo_apps_1/core/constants/validations.dart';

class OrdersValidator {
  // OrdersValidator({ this.text=''});
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter Email";
    }
    if (!Validations.isEmailValid(value)) {
      return "Enter valid Email";
    }
    return null;
  }

  static String? name(String? value) {
    if (value!.isEmpty) {
      return 'Enter Name';
    } else {
      return null;
    }
  }

  static String? comment(String? value) {
    if (value == null || value.isEmpty) {
      return "Enter Comment";
    }
    return null;
  }

  static String? numberId(String? value) {
    // const String text = '';

    if (value!.isEmpty) {
      return 'Enter NumberId';
    }
    // if (text != value) {
    //   return 'Enter the correct numberId';
    // }
    return null;
  }

  static String? phone(String? value) {
    if (value!.isEmpty) {
      return "Enter Phone";
    }

    if (!Validations.isPhoneValid(value)) {
      return "Enter valid Phone";
    } else {
      return null;
    }
  }

  static String? password(String? value) {
    const String text = '';

    if (value == null || value.isEmpty) {
      return "Enter affirmationPass";
    }
    if (!Validations.isPasswordValid(value)) {
      return 'Add uppercase letters, lowercase letters, numbers, or symbols to';
    }
    if (text.length > 8) {
      return 'There is an error in affirmationPass';
    }

    return null;
  }
}
