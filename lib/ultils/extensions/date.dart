import 'package:intl/intl.dart';

extension DateExtensions on DateTime {
  String toExtractTime() {
    return DateFormat('HH:mm:ss, dd/MM/yyyy').format(toLocal());
  }

  String toDateFormat() {
    return DateFormat('dd/MM/yyyy').format(toLocal());
  }
}
