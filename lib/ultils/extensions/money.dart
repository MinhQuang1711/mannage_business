import 'package:intl/intl.dart';

extension Money on double {
  String toMoney() {
    return NumberFormat.currency(symbol: "", decimalDigits: 0).format(this);
  }
}
