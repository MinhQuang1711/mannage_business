import 'package:flutter/material.dart';

import '../../../../../const/text_style/text_style.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.title,
    required this.content,
  });
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: captionRegular,
        ),
        Text(
          content,
          style: captionMedium,
        )
      ],
    );
  }
}
