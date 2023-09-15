import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/gen/assets.gen.dart';
import 'package:mannager_business/widget/image_icons/business_image_icon.dart';

class PaymentButton extends StatelessWidget {
  const PaymentButton({
    super.key,
    this.backgroundColor,
    required this.onPayment,
  });
  final Color? backgroundColor;
  final Function() onPayment;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _child(
              ButtonPeroperties(
                  onTap: () => context.pop(),
                  title: "Hủy",
                  textColor: BusinessColors.blue),
              null),
        ),
        const SizedBox(width: 10),
        Expanded(
          flex: 3,
          child: _child(
              ButtonPeroperties(
                  onTap: onPayment,
                  title: "Thanh toán",
                  backgroundColor: BusinessColors.blue),
              BusinessIcon(
                assetGenImage: Assets.icons.basketAlt3Light,
                color: BusinessColors.white,
              )),
        )
      ],
    );
  }

  Widget _child(ButtonPeroperties buttonPeroperties, Widget? prefWidget) {
    return GestureDetector(
      onTap: buttonPeroperties.onTap,
      child: Container(
        decoration: BoxDecoration(
          color: buttonPeroperties.backgroundColor ?? BusinessColors.light,
          borderRadius: BorderRadius.circular(buttonPeroperties.radius ?? 4),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  buttonPeroperties.title ?? "",
                  style: captionBold.copyWith(
                    color: buttonPeroperties.textColor ?? BusinessColors.white,
                  ),
                ),
              ),
            ),
            prefWidget ?? const SizedBox(),
          ],
        ),
      ),
    );
  }
}

class ButtonPeroperties {
  final Color? backgroundColor;
  final Function() onTap;
  final Color? textColor;
  final double? radius;
  final String? title;
  ButtonPeroperties({
    this.backgroundColor,
    required this.onTap,
    this.textColor,
    this.radius,
    this.title,
  });
}
