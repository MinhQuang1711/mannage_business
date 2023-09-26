import 'package:flutter/material.dart';
import 'package:mannager_business/ui/sell/widgets/product_card.dart';

import '../../../domains/models/products/product.dart';

class SellListView extends StatelessWidget {
  const SellListView({
    super.key,
    this.quantity,
    this.controller,
    required this.onLess,
    required this.onTap,
    required this.productList,
  });
  final int? quantity;
  final Function(Product) onTap;
  final Function(Product) onLess;
  final List<Product> productList;
  final ScrollController? controller;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: controller,
      padding: EdgeInsets.zero,
      itemCount: productList.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: ProductCard(
          quantity: quantity,
          product: productList[index],
          onLess: () => onLess(productList[index]),
          onTap: () => onTap(productList[index]),
        ),
      ),
    );
  }
}
