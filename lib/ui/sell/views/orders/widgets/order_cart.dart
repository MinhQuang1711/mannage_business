import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/domains/models/order_detai.dart';
import 'package:mannager_business/ultils/extensions/money.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    required this.orderDetail,
  });
  final OrderDetail orderDetail;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: BusinessColors.light.withOpacity(0.6),
          ),
        ),
      ),
      child: Row(
        children: [
          Text(
            orderDetail.product?.name ?? "",
            style: captionMedium,
          ),
          const SizedBox(width: 5),
          Text(
            "x${orderDetail.quantity ?? 0}",
            style: detailRegular.copyWith(color: BusinessColors.dark),
          ),
          const Spacer(),
          Text(
            orderDetail.totalPrice?.toMoney() ?? "0",
            style: captionRegular,
          )
        ],
      ),
    );
  }
}
