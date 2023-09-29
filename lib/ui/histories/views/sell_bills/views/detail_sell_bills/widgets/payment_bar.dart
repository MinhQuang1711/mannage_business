import 'package:flutter/material.dart';
import 'package:mannager_business/ui/sell/views/orders/widgets/infor_card.dart';
import 'package:mannager_business/ultils/extensions/money.dart';

class DetailHistoryPaymentBar extends StatelessWidget {
  const DetailHistoryPaymentBar({
    super.key,
    required this.paymentType,
    required this.totalProducts,
    required this.totalPrice,
  });
  final String paymentType;
  final int totalProducts;
  final double totalPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InfoCard(
          title: "Số lượng sản phẩm",
          content: totalProducts.toString(),
        ),
        InfoCard(
          title: "Phương thức thanh toán",
          content: paymentType,
        ),
        InfoCard(
          title: "Tổng tiền thanh toán",
          content: totalPrice.toMoney(),
        ),
      ],
    );
  }
}
