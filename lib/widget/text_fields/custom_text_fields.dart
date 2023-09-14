// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_element

import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/widget/text_fields/base_text_fields.dart';
import 'package:mannager_business/widget/text_fields/i_text_fields.dart';

class CustomTextField extends ITextFields {
  @override
  BaseTextFields outline({
    bool? obs,
    String? hintText,
    Widget? prefIcon,
    Function(String?)? onChanged,
    TextEditingController? controller,
    String? Function(String?)? validate,
  }) {
    OutlineInputBorder _outlineInputs(Color? borderColor) {
      return OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          width: 0.7,
          color: borderColor ?? BusinessColors.dark,
        ),
      );
    }

    return BaseTextFields(
      obs: obs,
      hintText: hintText,
      validate: validate,
      prefWidget: prefIcon,
      onChanged: onChanged,
      controller: controller,
      border: _outlineInputs(null),
      errorBorder: _outlineInputs(BusinessColors.red),
      focusBorder: _outlineInputs(BusinessColors.blue),
    );
  }

  @override
  BaseTextFields underLine({
    String? hintText,
    Widget? sufIcon,
    required String lable,
    TextEditingController? controller,
    String? Function(String? p1)? validate,
  }) {
    UnderlineInputBorder _underBorder(Color? borderColor) {
      return UnderlineInputBorder(
        borderSide: BorderSide(
          color: borderColor ?? BusinessColors.dark,
          width: 0.7,
        ),
      );
    }

    return BaseTextFields(
      lable: lable,
      sufWidget: sufIcon,
      hintText: hintText,
      validate: validate,
      controller: controller,
      border: _underBorder(null),
      errorBorder: _underBorder(BusinessColors.red),
      focusBorder: _underBorder(BusinessColors.blue),
    );
  }
}
