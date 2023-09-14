import 'package:flutter/material.dart';
import 'package:mannager_business/domains/models/products.dart';
import 'package:mannager_business/ui/sell/widgets/product_card.dart';

class SellListView extends StatelessWidget {
  const SellListView({
    super.key,
    this.controller,
    required this.onLess,
    required this.onTap,
    required this.productList,
  });
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
          product: productList[index],
          onLess: () => onLess(productList[index]),
          onTap: () => onTap(productList[index]),
        ),
      ),
    );
  }
}
