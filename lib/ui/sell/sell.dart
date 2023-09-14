import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/widget/text_fields/custom_text_fields.dart';

class Sell extends StatelessWidget {
  const Sell({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 13),
      child: Column(
        children: [
          CustomTextField().underLine(
            lable: 'Sản phẩm',
            hintText: "Tìm kiếm sản phẩm",
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Divider(
              color: BusinessColors.lightBlue,
              thickness: 1,
            ),
          )
        ],
      ),
      // child: BusinessCard().products(
      //   Product(
      //       imageUrl: "assets/images/product.jpg",
      //       name: "Olong mango tea",
      //       description: "Ginger,mango, olong tea",
      //       price: 55000),
      // ),
    );
  }
}
