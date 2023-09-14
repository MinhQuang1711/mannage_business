import 'package:flutter/material.dart';
import 'package:mannager_business/domains/models/products.dart';
import 'package:mannager_business/widget/cards/card.dart';

class SellListView extends StatelessWidget {
  const SellListView({
    super.key,
    this.controller,
    required this.productList,
  });
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
        child: BusinessCard().products(productList[index]),
      ),
    );
  }
}
