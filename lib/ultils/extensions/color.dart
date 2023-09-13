import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';

extension ColorExtension on Color {
  Color getTextColor() {
    if (this == BusinessColors.darkBlue) {
      return BusinessColors.lightYellow;
    } else if (this == BusinessColors.lightYellow) {
      return BusinessColors.darkYellow;
    } else if (this == BusinessColors.lightGreen) {
      return BusinessColors.darkBlue;
    } else if (this == BusinessColors.beige) {
      return BusinessColors.darkBlue;
    }
    return BusinessColors.white;
  }
}
