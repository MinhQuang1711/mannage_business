import 'package:mannager_business/const/messages/message.dart';

class BusinessValidate {
  String? nullCheck(String? input) {
    if (input == null || input.trim() == "") {
      return BusinessMessage.nullError;
    }
    return null;
  }

  bool inputThanZero(String? input) {
    if (double.tryParse(input!)! <= 0) {
      return false;
    }
    return true;
  }
}
