import 'package:flutter/material.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/domains/models/products.dart';
import 'package:mannager_business/widget/cards/base_cards.dart';
import 'package:mannager_business/widget/cards/i_card.dart';
import 'package:mannager_business/widget/images/images.dart';

class BusinessCard extends Icard {
  @override
  BaseCard products(Product product) {
    return BaseCard(
      suffWidget: BusinessImage(assetName: product.imageUrl ?? ""),
      title: Container(
        padding: const EdgeInsets.only(top: 10),
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
    );
  }
}
