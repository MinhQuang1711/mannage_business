import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/enum/buttons_size/button_size.dart';
import 'package:mannager_business/widget/app_bars/app_bar.dart';

import '../../widget/row_buttons/row_button.dart';
import '../../widget/text_fields/custom_text_fields.dart';

class Ingredient extends StatelessWidget {
  const Ingredient({super.key});

  @override
  Widget build(BuildContext context) {
    return const IngerdientPage();
  }
}

class IngerdientPage extends StatefulWidget {
  const IngerdientPage({super.key});

  @override
  State<IngerdientPage> createState() => _IngerdientPageState();
}

class _IngerdientPageState extends State<IngerdientPage> {
  final _name = TextEditingController();
  final _price = TextEditingController();
  final _loss = TextEditingController();
  final _netWeight = TextEditingController();

  void _disposeController() {
    _name.dispose();
    _price.dispose();
    _loss.dispose();
    _netWeight.dispose();
  }

  @override
  void dispose() {
    super.dispose();
    _disposeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const BusinessAppbar(canBack: false, title: "Thêm mới nguyên liệu"),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Expanded(
              flex: 2,
              child: Placeholder(),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: CustomTextField().outline(
                controller: _name,
                hintText: "Nhập tên nguyên liệu",
              ),
            ),
            Expanded(
              child: CustomTextField().outline(
                controller: _price,
                sufIcon: const Text("vnđ"),
                hintText: "Nhập Giá nguyên liệu",
              ),
            ),
            Expanded(
              child: CustomTextField().outline(
                controller: _netWeight,
                sufIcon: const Text("gram"),
                hintText: "Nhập khối lượng tịnh (g)",
              ),
            ),
            Expanded(
              child: CustomTextField().outline(
                controller: _loss,
                sufIcon: const Text("%"),
                hintText: "Nhập mức hao hụt (%)",
              ),
            ),
            const Spacer(),
            Expanded(
              child: BusinessRowButton(
                onTapAccept: () {},
                contentAccept: "Thêm mới",
                acceptColor: BusinessColors.lightOrange,
                buttonSize: ButtonSize.SIZE_32,
              ),
            )
          ],
        ),
      ),
    );
  }
}
