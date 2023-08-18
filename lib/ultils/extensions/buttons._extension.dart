import 'package:flutter/material.dart';
import 'package:mannager_business/const/enum/buttons_size/button_size.dart';
import 'package:mannager_business/const/text_style/text_style.dart';

extension ButtonsExtension on ButtonSize {
  EdgeInsetsGeometry getPadding() {
    switch (this) {
      case ButtonSize.SIZE_22:
        return const EdgeInsets.symmetric(horizontal: 3, vertical: 5);
      case ButtonSize.SIZE_32:
        return const EdgeInsets.symmetric(horizontal: 5, vertical: 7);
      case ButtonSize.SIZE_42:
        return const EdgeInsets.symmetric(horizontal: 7, vertical: 9);
    }
  }

  BorderRadius getBorderRadius() {
    switch (this) {
      case ButtonSize.SIZE_22:
        return BorderRadius.circular(4);
      case ButtonSize.SIZE_32:
        return BorderRadius.circular(6);
      case ButtonSize.SIZE_42:
        return BorderRadius.circular(8);
    }
  }

  Border getBorder(Color? borderColor) {
    const defaultColor = Colors.white;
    switch (this) {
      case ButtonSize.SIZE_22:
        return Border.all(width: 0.6, color: borderColor ?? defaultColor);
      case ButtonSize.SIZE_32:
        return Border.all(width: 0.7, color: borderColor ?? defaultColor);
      case ButtonSize.SIZE_42:
        return Border.all(width: 0.8, color: borderColor ?? defaultColor);
    }
  }

  TextStyle getTextStyle(Color? textColor) {
    switch (this) {
      case ButtonSize.SIZE_22:
        return detailRegular.copyWith(color: textColor);
      case ButtonSize.SIZE_32:
        return captionRegular.copyWith(color: textColor);
      case ButtonSize.SIZE_42:
        return captionMedium.copyWith(color: textColor);
    }
  }
}
