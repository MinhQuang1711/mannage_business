import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/enum/buttons_size/button_size.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/widget/buttons/custom_buttons.dart';

class ErrorState extends StatelessWidget {
  const ErrorState({
    super.key,
    required this.reload,
    required this.errorMessage,
  });
  final String errorMessage;
  final Function() reload;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            errorMessage,
            style: captionRegular.copyWith(color: BusinessColors.dark),
          ),
          const SizedBox(height: 10),
          CustomButtons().fill(
            isLoading: false,
            content: "Refresh",
            onTap: reload,
            backgroundColor: BusinessColors.red,
            buttonSize: ButtonSize.SIZE_22,
          )
        ],
      ),
    );
  }
}
