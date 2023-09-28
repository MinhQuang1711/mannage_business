import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/text_style/text_style.dart';

class BusinessSnackbar extends SnackBar {
  BusinessSnackbar({
    super.key,
    required bool isSuccess,
    required String content,
  }) : super(
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          content: Center(
            child: Text(
              content,
              style: miniRegular.copyWith(color: BusinessColors.white),
            ),
          ),
          backgroundColor: !isSuccess
              ? BusinessColors.darkRed.withOpacity(0.8)
              : BusinessColors.dark.withOpacity(0.8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        );
}
