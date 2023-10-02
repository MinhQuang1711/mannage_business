import 'package:flutter/material.dart';

import '../../../const/colors/business_colors.dart';
import '../../../const/text_style/text_style.dart';

class InforDetailOverviewCard extends StatelessWidget {
  const InforDetailOverviewCard({
    super.key,
    required this.title,
    required this.content,
  });
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            BusinessColors.blue,
            BusinessColors.lightBlue,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        // border: Border.all(color: BusinessColors.orange),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: bodyRegular.copyWith(color: BusinessColors.white),
          ),
          Text(
            content,
            style: bodyBold.copyWith(
              color: BusinessColors.white,
            ),
          )
        ],
      ),
    );
  }
}
