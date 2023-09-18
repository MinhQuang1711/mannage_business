import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/gen/assets.gen.dart';
import 'package:mannager_business/widget/image_icons/business_image_icon.dart';

class BusinessAppbar extends StatelessWidget implements PreferredSizeWidget {
  const BusinessAppbar({
    super.key,
    this.actions,
    required this.title,
    this.backgroundColor,
    required this.canBack,
  });
  final Color? backgroundColor;
  final bool canBack;
  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: backgroundColor ?? BusinessColors.lightOrange,
      title: Text(
        title,
        style: h6Medium.copyWith(color: BusinessColors.white),
      ),
      leading: canBack
          ? BusinessIcon(
              assetGenImage: Assets.icons.back,
              onTap: () => context.pop(),
              color: BusinessColors.white,
            )
          : null,
      actions: actions,
    );
  }

  final sizeHeight = const Size.fromHeight(30);
  @override
  Size get preferredSize => sizeHeight;
}
