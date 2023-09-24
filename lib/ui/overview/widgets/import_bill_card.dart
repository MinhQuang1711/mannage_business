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
        border: Border.all(color: BusinessColors.orange),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          Text(title),
          const SizedBox(height: 5),
          Text(
            content,
            style: bodyBold.copyWith(
              color: BusinessColors.orange,
            ),
          )
        ],
      ),
    );
  }
}
