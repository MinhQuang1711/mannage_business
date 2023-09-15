import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/domains/models/products.dart';
import 'package:mannager_business/ultils/extensions/money.dart';
import 'package:mannager_business/ultils/extensions/product_list.dart';

class BottomPayment extends StatelessWidget {
  const BottomPayment({
    super.key,
    this.onTap,
    required this.productList,
  });
  final List<Product> productList;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 100),
        transitionBuilder: (child, animation) => ScaleTransition(
          scale: animation,
          child: child,
        ),
        child: productList.isNotEmpty ? _child(productList) : const SizedBox(),
      ),
    );
  }
}

Widget _child(List<Product> productList) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: BusinessColors.darkBlue,
    ),
    padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
    child: Row(
      children: [
        Text(
          "${productList.length} Món",
          style: captionRegular.copyWith(color: BusinessColors.white),
        ),
        const Spacer(),
        Text(
          "Tổng thanh toán: ",
          style: captionRegular.copyWith(color: BusinessColors.white),
        ),
        Text("${productList.getTotalPrice().toMoney()} vnđ",
            style: captionMedium.copyWith(color: BusinessColors.white)),
      ],
    ),
  );
}
