import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/text_style/text_style.dart';

class BaseTextFields extends StatelessWidget {
  const BaseTextFields({
    super.key,
    this.validate,
    this.controller,
    this.onChanged,
    this.focusBorder,
    this.errorBorder,
    this.border,
    this.hintText,
    this.lable,
    this.obs,
    this.backgroundColor,
    this.onTap,
    this.prefWidget,
    this.sufWidget,
    this.hintColor,
    this.readOnly,
  });

  final String? Function(String?)? validate;
  final TextEditingController? controller;
  final Function(String?)? onChanged;
  final InputBorder? errorBorder;
  final InputBorder? focusBorder;
  final Color? backgroundColor;
  final InputBorder? border;
  final Function()? onTap;
  final Widget? prefWidget;
  final String? hintText;
  final Widget? sufWidget;
  final Color? hintColor;
  final bool? readOnly;
  final String? lable;
  final bool? obs;

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(horizontal: 10, vertical: 10);
    TextStyle getStyle(Color? color) {
      return captionRegular.copyWith(
        color: color ?? BusinessColors.dark,
      );
    }

    return TextFormField(
      style: getStyle(BusinessColors.black),
      obscureText: obs ?? false,
      controller: controller,
      onChanged: onChanged,
      onTap: onTap,
      decoration: InputDecoration(
        isDense: true,
        border: border,
        hintText: hintText,
        suffixIcon: sufWidget,
        prefixIcon: prefWidget,
        contentPadding: padding,
        errorBorder: errorBorder,
        focusedBorder: focusBorder,
        hintStyle: getStyle(hintColor),
      ),
    );
  }
}
