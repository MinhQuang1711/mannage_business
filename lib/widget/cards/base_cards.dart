// ignore_for_file: unused_local_variable, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';

class BaseCard extends StatelessWidget {
  const BaseCard({
    super.key,
    this.descriptions,
    this.suffWidget,
    this.onTap,
    this.title,
  });

  final Widget? descriptions;
  final Widget? suffWidget;
  final Function()? onTap;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    final _borderRadius = BorderRadius.circular(6);
    const _boxShadow = BoxShadow(
      offset: Offset(1, 1),
      blurRadius: 1,
      color: BusinessColors.light,
    );
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: BusinessColors.white,
          borderRadius: _borderRadius,
          boxShadow: const [_boxShadow],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            suffWidget ?? const SizedBox(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  title ?? const SizedBox(),
                  descriptions ?? const SizedBox(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
