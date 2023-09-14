import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/domains/models/products.dart';
import 'package:mannager_business/gen/assets.gen.dart';
import 'package:mannager_business/widget/cards/base_cards.dart';
import 'package:mannager_business/widget/cards/i_card.dart';
import 'package:mannager_business/widget/image_icons/business_image_icon.dart';
import 'package:mannager_business/widget/images/images.dart';

class BusinessCard extends Icard {
  @override
  BaseCard products(Product product, {Function()? onTap}) {
    return BaseCard(
      onTap: onTap,
      suffWidget: BusinessImage(assetName: product.imageUrl ?? ""),
      title: Container(
        padding: const EdgeInsets.only(top: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  product.name ?? "",
                  style: bodyRegular,
                ),
                const Spacer(),
                Text(
                  "${product.price.toString()} đ",
                  style: captionMedium,
                )
              ],
            ),
            Text(
              "   Note: ${product.description}",
              style: detailRegular,
            ),
          ],
        ),
      ),
      descriptions: Row(
        children: [
          const Spacer(),
          _iconButton(Assets.icons.addLight),
          const SizedBox(width: 10),
          _iconButton(Assets.icons.less)
        ],
      ),
    );
  }
}

Widget _iconButton(AssetGenImage assetGenImage) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2), color: BusinessColors.darkBlue),
    child: BusinessIcon(
      assetGenImage: assetGenImage,
      color: BusinessColors.beige,
    ),
  );
}
