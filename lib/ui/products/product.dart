import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/enum/buttons_size/button_size.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/ui/products/views/Ingredient_view.dart';
import 'package:mannager_business/ui/products/views/top_bar.dart';
import 'package:mannager_business/widget/app_bars/app_bar.dart';
import 'package:mannager_business/widget/row_buttons/row_button.dart';
import 'package:mannager_business/widget/unfocus_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProductPage();
  }
}

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  File? filePicked;

  void _callBackUpdateIamge(File file) async {
    filePicked = file;
    setState(() {});
  }

  void _onCreate() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BusinessAppbar(
        canBack: true,
        title: "Thêm mới sản phẩm",
        backgroundColor: BusinessColors.orange.withOpacity(0.8),
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
                    const Expanded(
                      flex: 2,
                      child: IngredientView(),
                    ),
                    const SizedBox(height: 50),
                    BusinessRowButton(
                      acceptColor: BusinessColors.orange.withOpacity(0.8),
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
