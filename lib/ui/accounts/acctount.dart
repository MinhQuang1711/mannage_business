import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/gen/assets.gen.dart';
import 'package:mannager_business/ui/accounts/widgets/card.dart';
import 'package:mannager_business/ui/accounts/widgets/top_bar.dart';
import 'package:mannager_business/widget/image_icons/business_image_icon.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BusinessColors.light,
      body: Column(
        children: [
          const AccountTopBar(userName: "Minh Quang"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Column(
              children: [
                AccountCard(
                    child: Column(
                  children: [
                    _rowWidget(
                      assetGenImage: Assets.icons.waterfallLight,
                      title: "Báo cáo",
                    ),
                    const SizedBox(height: 10),
                    _rowWidget(
                      assetGenImage: Assets.icons.search,
                      title: 'Cài đặt',
                    ),
                    const SizedBox(height: 10),
                    _rowWidget(
                      title: "Đăng xuất",
                      color: BusinessColors.red,
                      assetGenImage: Assets.icons.logOut,
                    )
                  ],
                ))
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Row _rowWidget({
    required AssetGenImage assetGenImage,
    required String title,
    Color? color,
  }) {
    return Row(
      children: [
        BusinessIcon(
          assetGenImage: assetGenImage,
          color: color,
        ),
        const SizedBox(width: 12),
        Text(
          title,
          style: captionMedium.copyWith(color: color),
        )
      ],
    );
  }
}
