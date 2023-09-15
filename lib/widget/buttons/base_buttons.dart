import 'package:flutter/material.dart';
import 'package:mannager_business/const/enum/buttons_size/button_size.dart';
import 'package:mannager_business/ultils/extensions/buttons._extension.dart';

class BaseButtons extends StatelessWidget {
  const BaseButtons({
    super.key,
    required this.buttonSize,
    required this.child,
    this.onTap,
    this.sufWidget,
    this.prefWidget,
    this.borderColor,
    this.backgroundColor,
  });
  final Widget child;
  final Function()? onTap;
  final Widget? sufWidget;
  final Color? borderColor;
  final Widget? prefWidget;
  final ButtonSize buttonSize;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: buttonSize.getPadding(),
        decoration: BoxDecoration(
          borderRadius: buttonSize.getBorderRadius(),
          border: buttonSize.getBorder(borderColor),
          color: backgroundColor,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            prefWidget ?? const SizedBox(),
            child,
            sufWidget ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}
