import 'package:flutter/material.dart';
import 'package:mannager_business/gen/assets.gen.dart';
import 'package:mannager_business/widget/image_icons/business_image_icon.dart';
import 'package:mannager_business/widget/text_fields/custom_text_fields.dart';

class InputIngredient extends StatelessWidget {
  const InputIngredient({
    super.key,
    this.weight,
    this.onTap,
    this.ingredientName,
  });
  final double? weight;
  final Function()? onTap;
  final String? ingredientName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomTextField().underLine(
            readOnly: true,
            lable: "Nguyên liệu",
            controller: TextEditingController(text: ingredientName),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: CustomTextField().underLine(
            readOnly: true,
            lable: "Trọng lượng",
            controller: TextEditingController(text: weight.toString()),
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
