import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/widget/cards/base_cards.dart';
import 'package:mannager_business/widget/images/images.dart';

class OverviewProductCard extends StatelessWidget {
  const OverviewProductCard({
    super.key,
    required this.productName,
    required this.quantity,
    required this.imageUrl,
  });
  final String imageUrl;
  final String productName;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      suffWidget: BusinessImage(assetName: imageUrl),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            productName,
            style: captionBold,
          ),
          Text(
            "x$quantity",
            style: detailRegular.copyWith(
              color: BusinessColors.dark.withOpacity(0.7),
            ),
          )
        ],
      ),
    );
  }
}
