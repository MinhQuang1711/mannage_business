import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/enum/buttons_size/button_size.dart';
import 'package:mannager_business/widget/buttons/custom_buttons.dart';

class BusinessRowButton extends StatelessWidget {
  const BusinessRowButton({
    super.key,
    required this.buttonSize,
    required this.contentAccept,
    required this.onTapAccept,
    this.acceptColor,
  });
  final Color? acceptColor;
  final ButtonSize buttonSize;
  final String contentAccept;
  final Function() onTapAccept;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButtons().fill(
            isLoading: false,
            content: "Hủy",
            onTap: () => context.pop(),
            backgroundColor: BusinessColors.dark.withOpacity(0.6),
            buttonSize: buttonSize,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: CustomButtons().fill(
            isLoading: false,
            content: contentAccept,
            onTap: onTapAccept,
            backgroundColor: acceptColor ?? BusinessColors.blue,
            buttonSize: buttonSize,
          ),
        ),
      ],
    );
  }
}
