import 'package:flutter/material.dart';
import 'package:mannager_business/widget/text_fields/custom_text_fields.dart';

import '../../../../../const/text_style/text_style.dart';

class InputCard extends StatelessWidget {
  const InputCard({
    super.key,
    required this.title,
    this.keyboardType,
    this.callBackUpdateValue,
  });
  final String title;
  final TextInputType? keyboardType;
  final Function(String?)? callBackUpdateValue;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 22,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: captionRegular,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.18,
            child: CustomTextField().outline(
              onChanged: callBackUpdateValue,
              keyBoardType: keyboardType,
            ),
          ),
        ],
      ),
    );
  }
}
