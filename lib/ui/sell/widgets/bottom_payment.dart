import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/domains/models/products.dart';
import 'package:mannager_business/ultils/extensions/product_list.dart';

class BottomPayment extends StatelessWidget {
  const BottomPayment({super.key, required this.productList});
  final List<Product> productList;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 5,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: BusinessColors.blue,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
        child: Row(
          children: [
            Text(
              "${productList.length} Món",
              style: captionRegular.copyWith(color: BusinessColors.beige),
            ),
            const Spacer(),
            Text(
              "Tổng thanh toán: ",
              style: captionRegular.copyWith(color: BusinessColors.beige),
            ),
            Text("${productList.getTotalPrice()} vnđ",
                style: captionMedium.copyWith(color: BusinessColors.beige)),
          ],
        ),
      ),
    );
  }
}
