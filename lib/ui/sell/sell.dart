import 'package:flutter/material.dart';
import 'package:mannager_business/domains/models/products.dart';
import 'package:mannager_business/gen/assets.gen.dart';
import 'package:mannager_business/ui/sell/views/orders/order.dart';
import 'package:mannager_business/ui/sell/widgets/bottom_payment.dart';
import 'package:mannager_business/ui/sell/widgets/sell_lis_view.dart';
import 'package:mannager_business/ultils/extensions/context.dart';
import 'package:mannager_business/widget/image_icons/business_image_icon.dart';
import 'package:mannager_business/widget/list_views/list_view.dart';

import 'package:mannager_business/widget/text_fields/custom_text_fields.dart';
import 'package:mannager_business/widget/titles/title.dart';

class Sell extends StatelessWidget {
  const Sell({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 13),
      child: const SellPage(),
    );
  }
}

class SellPage extends StatefulWidget {
  const SellPage({super.key});
  @override
  State<SellPage> createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  final List<Product> productList = [
    Product(
      price: 50000,
      name: "Oloong Mango tea",
      imageUrl: Assets.images.product.keyName,
      description: "Mango, ginger, oloong tea",
    ),
    Product(
      price: 50000,
      name: "Lemon Americano",
      imageUrl: Assets.images.ameChanh.keyName,
      description: "Lemon, Coffee",
    ),
    Product(
      price: 50000,
      name: "PassionChia",
      imageUrl: Assets.images.passionChia.keyName,
      description: "Mango, ginger, oloong tea",
    ),
    Product(
      price: 50000,
      name: "Coffe Latte",
      imageUrl: Assets.images.latte.keyName,
      description: "Espresso, fresh milk",
    ),
    Product(
      price: 50000,
      name: "Matcha Latte",
      imageUrl: Assets.images.matcha.keyName,
      description: "Matcha, fresh milk",
    ),
    Product(
      price: 50000,
      name: "Colbrew",
      imageUrl: Assets.images.originalColdbrew.keyName,
      description: "Coffee",
    ),
    Product(
      price: 50000,
      name: "Big cat",
      imageUrl: Assets.images.pigCat.keyName,
      description: "A cat fat likes pig",
    ),
  ];
  void _onMore(Product value) {
    productsSelected.add(value);
    setState(() {});
  }

  void _onLess(Product value) {
    int index = productsSelected.indexOf(
        productsSelected.firstWhere((element) => element.name == value.name));
    productsSelected = List.from(productsSelected)..removeAt(index);
    setState(() {});
  }

  void _onShowDetaiOrder() =>
      context.showBottomSheet(Order(productList: productsSelected));

  List<Product> productsSelected = [];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField().outline(
              borderRadius: 18,
              hintText: "Tìm kiếm sản phẩm",
              prefIcon: BusinessIcon(
                assetGenImage: Assets.icons.search,
              ),
            ),
            const SizedBox(height: 10),
            const BusinessTitle(title: "Kết quả tìm kiếm"),
            const SizedBox(height: 8),
            Expanded(
              child: BusinessListView<Product>(
                items: productList,
                child: SellListView(
                  productList: productList,
                  onLess: _onLess,
                  onTap: _onMore,
                ),
              ),
            ),
            const SizedBox(height: 10),
            BottomPayment(
              productList: productsSelected,
              onTap: _onShowDetaiOrder,
            ),
          ],
        ),
      ],
    );
  }
}
