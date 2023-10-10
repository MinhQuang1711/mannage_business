import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mannager_business/const/fake_data/ingredient_list.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/domains/models/detail_product/detail_product.dart';
import 'package:mannager_business/ui/products/blocs/product_bloc.dart';
import 'package:mannager_business/ui/products/blocs/product_event.dart';
import 'package:mannager_business/ui/products/blocs/product_state.dart';
import 'package:mannager_business/ui/products/widgets/add_ingredient_dialog.dart';
import 'package:mannager_business/ui/products/widgets/input_ingredient.dart';
import 'package:mannager_business/ultils/extensions/context.dart';
import 'package:mannager_business/widget/list_views/list_view.dart';

class IngredientView extends StatefulWidget {
  const IngredientView({super.key});

  @override
  State<IngredientView> createState() => _IngredientViewState();
}

class _IngredientViewState extends State<IngredientView> {
  final List<InputIngredient> _inputIngredientList = [];
  DetailProduct detailProduct = const DetailProduct();

  void _addIngredient() async {
    await context.showAnimatedDialog(
      dialog: AddIngredientDialog(
          ingredientList: ingredientList,
          productBloc: BlocProvider.of<ProductBloc>(context)),
    );
  }

  void _onAddIngredientSuccess(INGREDIENT_SUCCESS state) {
    context.pop();
    _inputIngredientList.add(InputIngredient(
      weight: state.detailProduct.weight,
      ingredientName: state.detailProduct.ingredientName,
    ));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: BlocListener<ProductBloc, ProductState>(
              listener: (context, state) => state.mapOrNull(
                addIngredientSuccess: (value) => _onAddIngredientSuccess(value),
              ),
              child: BusinessListView<InputIngredient>(
                items: _inputIngredientList,
                child: Column(
                  children: _inputIngredientList
                      .map(
                        (e) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: e,
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: _addIngredient,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Thêm nguyên liệu +",
                style: detailBold.copyWith(fontFamily: ""),
              ),
            ),
          )
        ],
      ),
    );
  }
}
