import 'package:flutter/material.dart';
import 'package:mannager_business/const/enum/buttons_size/button_size.dart';
import 'package:mannager_business/ultils/extensions/buttons._extension.dart';
import 'package:mannager_business/widget/buttons/base_buttons.dart';
import 'package:mannager_business/widget/buttons/i_buttons.dart';

class CustomButtons extends IButtons {
  @override
  BaseButtons fill({
    Color? textColor,
    Widget? sufWidget,
    Widget? prefWidget,
    required bool isLoading,
    required String content,
    required Function() onTap,
    required Color backgroundColor,
    required ButtonSize buttonSize,
  }) {
    return BaseButtons(
      buttonSize: buttonSize,
      prefWidget: prefWidget,
      sufWidget: sufWidget,
      onTap: onTap,
      child: !isLoading
          ? Text(
              content,
              style: buttonSize.getTextStyle(textColor ?? Colors.white),
            )
          : CircularProgressIndicator(
              color: textColor ?? Colors.white,
            ),
    );
  }

  @override
  BaseButtons outline({
    Widget? sufWidget,
    Widget? prefWidget,
    required bool isLoading,
    required String content,
    required Function() onTap,
    required Color borderColor,
    required ButtonSize buttonSize,
  }) {
    return BaseButtons(
      buttonSize: buttonSize,
      prefWidget: prefWidget,
      sufWidget: sufWidget,
      onTap: onTap,
      child: !isLoading
          ? Text(
              content,
              style: buttonSize.getTextStyle(borderColor),
            )
          : CircularProgressIndicator(
              color: borderColor,
            ),
    );
  }
}
