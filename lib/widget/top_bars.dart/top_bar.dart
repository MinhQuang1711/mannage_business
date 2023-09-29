import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mannager_business/gen/assets.gen.dart';
import 'package:mannager_business/widget/image_icons/business_image_icon.dart';

import '../../const/colors/business_colors.dart';
import '../../const/text_style/text_style.dart';

class BusinessTopBar extends StatelessWidget {
  const BusinessTopBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        color: BusinessColors.blue,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          BusinessIcon(
            assetGenImage: Assets.icons.backLight,
            color: BusinessColors.white,
            onTap: () => context.pop(),
          ),
          Expanded(
            child: Center(
              child: Text(
                title,
                style: bodyBold.copyWith(color: BusinessColors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
