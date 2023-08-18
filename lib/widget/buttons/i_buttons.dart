import 'package:flutter/material.dart';
import 'package:mannager_business/const/enum/buttons_size/button_size.dart';
import 'package:mannager_business/widget/buttons/base_buttons.dart';

abstract class IButtons {
  BaseButtons outline({
    Widget? sufWidget,
    Widget? prefWidget,
    required bool isLoading,
    required String content,
    required Function() onTap,
    required Color borderColor,
    required ButtonSize buttonSize,
  });
  BaseButtons fill({
    Color? textColor,
    Widget? sufWidget,
    Widget? prefWidget,
    required bool isLoading,
    required String content,
    required Function() onTap,
    required Color backgroundColor,
    required ButtonSize buttonSize,
  });
}
