import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mannager_business/domains/repositories/products/product_repository.dart';
import 'package:mannager_business/gen/assets.gen.dart';
import 'package:mannager_business/ui/sell/blocs/bloc.dart';
import 'package:mannager_business/ui/sell/blocs/sell_event.dart';
import 'package:mannager_business/ui/sell/blocs/sell_state.dart';
import 'package:mannager_business/ui/sell/views/orders/order.dart';
import 'package:mannager_business/ui/sell/widgets/bottom_payment.dart';
import 'package:mannager_business/ui/sell/widgets/sell_lis_view.dart';
import 'package:mannager_business/ultils/extensions/context.dart';
import 'package:mannager_business/widget/image_icons/business_image_icon.dart';
import 'package:mannager_business/widget/list_views/list_view.dart';

import 'package:mannager_business/widget/text_fields/custom_text_fields.dart';
import 'package:mannager_business/widget/titles/title.dart';

import '../../const/fake_data/product_list.dart';
import '../../domains/models/products/product.dart';

class Sell extends StatelessWidget {
  const Sell({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SellBloc(ProductRepository()),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 13),
        child: const SellPage(),
      ),
    );
  }
}

class SellPage extends StatefulWidget {
  const SellPage({super.key});
  @override
  State<SellPage> createState() => _SellPageState();
}

class _SellPageState extends State<SellPage> {
  int? _quantity;

  void _onMore(Product value) {
    productsSelected.add(value);
    setState(() {});
  }

  void _onGetProductList() {
    BlocProvider.of<SellBloc>(context).add(const SellEvent.getProduct());
  }

  void _onLess(Product value) {
    int index = productsSelected.indexOf(
        productsSelected.firstWhere((element) => element.name == value.name));
    productsSelected = List.from(productsSelected)..removeAt(index);
    setState(() {});
  }

  void _refreshProductsAndQuantity() {
    productsSelected = [];
    _quantity = 0;
    setState(() {});
  }

  void _initQuantity() {
    Future.delayed(const Duration(milliseconds: 50)).then((value) {
      _quantity = null;
      setState(() {});
    });
  }

  void _onDeleteAllProductSelected() {
    _refreshProductsAndQuantity();
    _initQuantity();
  }

  void _onShowDetaiOrder() async =>
      await context.showBottomSheet(Order(productList: productsSelected));

  void _whenFailure(String message) {
    context.showSnackbar(isSuccess: false, content: message);
  }

  void _whenGetProductSuccess(List<Product> list) {
    productList = list;
    setState(() {});
  }

  List<Product> productsSelected = [];

  @override
  void initState() {
    super.initState();
    _onGetProductList();
  }

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
                child: BlocListener<SellBloc, SellState>(
                  listener: (context, state) => state.whenOrNull(
                    failure: (value) => _whenFailure(value),
                    getProductSuccess: (value) => _whenGetProductSuccess(value),
                  ),
                  child: SellListView(
                    productList: productList,
                    quantity: _quantity,
                    onLess: _onLess,
                    onTap: _onMore,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            BottomPayment(
              productList: productsSelected,
              onTap: _onShowDetaiOrder,
              onDelete: _onDeleteAllProductSelected,
            ),
          ],
        ),
      ],
    );
  }
}
