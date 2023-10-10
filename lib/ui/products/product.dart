import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/enum/buttons_size/button_size.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/domains/models/detail_product/detail_product.dart';
import 'package:mannager_business/domains/repositories/products/product_repository.dart';
import 'package:mannager_business/ui/products/blocs/product_bloc.dart';
import 'package:mannager_business/ui/products/blocs/product_state.dart';
import 'package:mannager_business/ui/products/views/Ingredient_view.dart';
import 'package:mannager_business/ui/products/views/top_bar.dart';
import 'package:mannager_business/widget/app_bars/app_bar.dart';
import 'package:mannager_business/widget/row_buttons/row_button.dart';
import 'package:mannager_business/widget/unfocus_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductBloc(ProductRepository()),
      child: const ProductPage(),
    );
  }
}

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  File? filePicked;
  final List<DetailProduct> detailProductList = [];

  void _callBackUpdateIamge(File file) async {
    filePicked = file;
    setState(() {});
  }

  void _onCreate() {
    print(detailProductList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BusinessAppbar(
        canBack: true,
        title: "Thêm mới sản phẩm",
        backgroundColor: BusinessColors.blue,
      ),
      body: UnfocusWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: CreateProductTopbar(
                        callBackUpdateImage: _callBackUpdateIamge,
                        imageFile: filePicked,
                      ),
                    ),
                    const Text(
                      "Nguyên liệu: ",
                      style: bodyBold,
                    ),
                    BlocListener<ProductBloc, ProductState>(
                      listener: (context, state) => state.mapOrNull(
                        addIngredientSuccess: (value) =>
                            detailProductList.add(value.detailProduct),
                      ),
                      child: Expanded(
                        flex: 2,
                        child: BlocProvider.value(
                          value: BlocProvider.of<ProductBloc>(context),
                          child: const IngredientView(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    BusinessRowButton(
                      acceptColor: BusinessColors.blue,
                      buttonSize: ButtonSize.SIZE_32,
                      contentAccept: "Thêm mới",
                      onTapAccept: _onCreate,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
