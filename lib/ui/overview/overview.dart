import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/text_style/text_style.dart';

class Overview extends StatelessWidget {
  const Overview({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Tổng quan",
        style: captionRegular.copyWith(color: BusinessColors.blue),
      ),
    );
  }
}
