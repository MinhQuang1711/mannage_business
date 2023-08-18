import 'package:flutter/material.dart';
import 'package:mannager_business/widget/text_fields/base_text_fields.dart';

abstract class ITextFields {
  BaseTextFields outline({
    bool? obs,
    String? hintText,
    Function(String?)? onChanged,
    TextEditingController? controller,
    String? Function(String?)? validate,
  });

  BaseTextFields underLine({
    String? hintText,
    required String lable,
    TextEditingController? controller,
    String? Function(String?) validate,
  });
}
