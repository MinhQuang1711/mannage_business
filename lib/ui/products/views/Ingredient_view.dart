import 'package:flutter/material.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/ui/products/widgets/input_ingredient.dart';
import 'package:mannager_business/widget/list_views/list_view.dart';

class IngredientView extends StatefulWidget {
  const IngredientView({super.key});

  @override
  State<IngredientView> createState() => _IngredientViewState();
}

class _IngredientViewState extends State<IngredientView> {
  final List<InputIngredient> _inputIngredientList = [];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
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
          GestureDetector(
            onTap: () {
              _inputIngredientList.add(
                const InputIngredient(
                  ingredientList: [],
                ),
              );
              setState(() {});
            },
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
