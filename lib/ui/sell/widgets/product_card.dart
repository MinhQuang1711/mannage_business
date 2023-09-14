import 'package:flutter/material.dart';
import 'package:mannager_business/domains/models/products.dart';
import 'package:mannager_business/widget/cards/base_cards.dart';

import '../../../const/colors/business_colors.dart';
import '../../../const/text_style/text_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../widget/image_icons/business_image_icon.dart';
import '../../../widget/images/images.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.onLess,
    required this.onTap,
  });
  final Product product;
  final Function() onTap;
  final Function() onLess;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int _quantity = 0;
  void _onTap() {
    _quantity++;
    widget.onTap();
  }

  void _onMore() {
    _quantity++;
    widget.onTap();
  }

  void _onLess() {
    _quantity--;
    widget.onLess();
  }

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      onTap: _onTap,
      suffWidget: BusinessImage(assetName: widget.product.imageUrl ?? ""),
      title: Container(
        padding: const EdgeInsets.only(top: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  widget.product.name ?? "",
                  style: bodyRegular,
                ),
                const Spacer(),
                Text(
                  "${widget.product.price.toString()} đ",
                  style: captionMedium,
                )
              ],
            ),
            Text(
              "   Note: ${widget.product.description}",
              style: detailRegular,
            ),
          ],
        ),
      ),
      descriptions: _quantity > 0
          ? Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Spacer(),
                  _iconButton(Assets.icons.add, _onMore),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "x$_quantity",
                      style: captionMedium.copyWith(
                          color: BusinessColors.darkBlue),
                    ),
                  ),
                  _iconButton(Assets.icons.less, _onLess)
                ],
              ),
            )
          : null,
    );
  }
}

Widget _iconButton(AssetGenImage assetGenImage, Function() onTap) {
  return GestureDetector(
    behavior: HitTestBehavior.translucent,
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: BusinessColors.darkBlue),
      child: BusinessIcon(
        assetGenImage: assetGenImage,
        color: BusinessColors.beige,
      ),
    ),
  );
}
