import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/text_style/text_style.dart';

class Sell extends StatelessWidget {
  const Sell({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Bán hàng",
        style: captionRegular.copyWith(color: BusinessColors.blue),
      ),
    );
  }
}
