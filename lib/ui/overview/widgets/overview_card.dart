import 'package:flutter/material.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/ultils/extensions/color.dart';

class OverviewCard extends StatelessWidget {
  const OverviewCard({
    super.key,
    required this.title,
    required this.content,
    this.backgroundColor,
  });
  final String title;
  final String content;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.35,
      height: size.width * 0.2,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style:
                captionMedium.copyWith(color: backgroundColor?.getTextColor()),
          ),
          const SizedBox(height: 5),
          Text(
            content,
            style: bodyMedium.copyWith(color: backgroundColor?.getTextColor()),
          ),
        ],
      ),
    );
  }
}
