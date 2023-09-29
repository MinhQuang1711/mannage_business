import 'package:mannager_business/const/enum/payment_type.dart';

extension PaymenEx on PaymentType {
  String getName() {
    switch (this) {
      case PaymentType.CASH:
        return "Tiền mặt";
      case PaymentType.TRANFER:
        return "Chuyển khoản";
    }
  }
}

extension IntEx on int {
  PaymentType getPaymentType() {
    if (this == PaymentType.CASH.index) {
      return PaymentType.CASH;
    }
    return PaymentType.TRANFER;
  }
}
