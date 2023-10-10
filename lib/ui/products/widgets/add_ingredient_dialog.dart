import 'package:flutter/material.dart';
import 'package:mannager_business/const/enum/buttons_size/button_size.dart';
import 'package:mannager_business/const/text_style/text_style.dart';
import 'package:mannager_business/domains/models/detail_product/detail_product.dart';
import 'package:mannager_business/domains/models/ingredient.dart';
import 'package:mannager_business/ui/products/blocs/product_bloc.dart';
import 'package:mannager_business/ui/products/blocs/product_event.dart';
import 'package:mannager_business/widget/drop_down/drop_buttons/drop_buttons.dart';
import 'package:mannager_business/widget/drop_down/drop_items/drop_items.dart';
import 'package:mannager_business/widget/row_buttons/row_button.dart';
import 'package:mannager_business/widget/text_fields/custom_text_fields.dart';
import 'package:mannager_business/widget/unfocus_widget.dart';
import 'package:searchfield/searchfield.dart';

class AddIngredientDialog extends StatefulWidget {
  const AddIngredientDialog({
    super.key,
    required this.ingredientList,
    required this.productBloc,
  });
  final ProductBloc productBloc;
  final List<Ingredient> ingredientList;

  @override
  State<AddIngredientDialog> createState() => _AddIngredientDialogState();
}

class _AddIngredientDialogState extends State<AddIngredientDialog> {
  var detailProduct = const DetailProduct();
  void _onIngredientChanged(SearchFieldListItem<Ingredient> value) {
    detailProduct = detailProduct.copyWith(ingredientName: value.item?.name);
  }

  void _onWeightChanged(String? value) {
    detailProduct =
        detailProduct.copyWith(weight: double.tryParse(value ?? "0"));
  }

  void _onSubmit() {
    widget.productBloc.add(ProductEvent.addMoreIngredient(detailProduct));
  }

  @override
  Widget build(BuildContext context) {
    var suggestions = CustomDropItems();

    return UnfocusWidget(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _columnInput(
              title: "Nguyên liệu",
              contentWidget: CustomDropButtons<Ingredient>(
                hintText: "Chọn nguyên liệu",
                listItems: widget.ingredientList,
                suggestions: suggestions.ingredient,
                onSuggestionTap: _onIngredientChanged,
              ),
            ),
            const SizedBox(height: 15),
            _columnInput(
              title: "Trọng lượng",
              contentWidget: CustomTextField().underLine(
                lable: "Trọng lượng",
                hintText: "Nhập trọng lượng",
                onChanged: _onWeightChanged,
                textInputType: TextInputType.number,
              ),
            ),
            const SizedBox(height: 30),
            BusinessRowButton(
              buttonSize: ButtonSize.SIZE_22,
              contentAccept: "Xác nhận",
              onTapAccept: _onSubmit,
            ),
          ],
        ),
      ),
    );
  }

  Widget _columnInput({
    required String title,
    required Widget contentWidget,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$title:", style: captionMedium),
        contentWidget,
      ],
    );
  }
}
