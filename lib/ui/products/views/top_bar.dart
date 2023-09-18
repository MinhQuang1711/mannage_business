import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../../ultils/validates/validate.dart';
import '../../../widget/images/images.dart';
import '../../../widget/text_fields/custom_text_fields.dart';

class CreateProductTopbar extends StatelessWidget {
  const CreateProductTopbar({super.key});

  @override
  Widget build(BuildContext context) {
    final businessValidate = BusinessValidate();
    return Row(
      children: [
        BusinessImage(
          width: 150,
          height: 170,
          assetName: Assets.images.pigCat.keyName,
        ),
        Expanded(
            child: Column(
          children: [
            const Expanded(child: SizedBox()),
            Expanded(
              child: CustomTextField().outline(
                hintText: "Nhập tên sản phẩm",
                validate: businessValidate.nullCheck,
              ),
            ),
            Expanded(
              child: CustomTextField().outline(
                hintText: "Nhập giá sản phẩm",
                sufIcon: const Text("vnđ"),
                validate: businessValidate.nullCheck,
              ),
            ),
          ],
        ))
      ],
    );
  }
}
