import 'package:flutter/material.dart';

import '../../const/colors/business_colors.dart';
import '../../const/text_style/text_style.dart';

class BusinessTitle extends StatelessWidget {
  const BusinessTitle({
    super.key,
    required this.title,
    this.textStyle,
  });
  final String title;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    const decoration = BoxDecoration(
      border: Border(
        bottom: BorderSide(color: BusinessColors.dark),
      ),
    );
    return Container(
      decoration: decoration,
      child: Text(
        title,
        style: textStyle ?? bodyMedium,
      ),
    );
  }
}
