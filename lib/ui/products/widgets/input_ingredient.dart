import 'package:flutter/material.dart';
import 'package:mannager_business/gen/assets.gen.dart';
import 'package:mannager_business/widget/drop_down/drop_buttons/drop_buttons.dart';
import 'package:mannager_business/widget/image_icons/business_image_icon.dart';
import 'package:mannager_business/widget/text_fields/custom_text_fields.dart';

import '../../../domains/models/ingredient.dart';
import '../../../widget/drop_down/drop_items/drop_items.dart';

class InputIngredient extends StatelessWidget {
  const InputIngredient({
    super.key,
    this.onTap,
    required this.ingredientList,
  });
  final Function()? onTap;
  final List<Ingredient> ingredientList;

  @override
  Widget build(BuildContext context) {
    final customDropItems = CustomDropItems();
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDropButtons<Ingredient>(
            listItems: ingredientList,
            hintText: "Chọn nguyên liệu",
            suggestions: customDropItems.ingredient,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: CustomTextField().outline(
            hintText: "Trọng lượng",
          ),
        ),
        const SizedBox(width: 10),
        BusinessIcon(
          assetGenImage: Assets.icons.trashLight,
          onTap: onTap,
        )
      ],
    );
  }
}
