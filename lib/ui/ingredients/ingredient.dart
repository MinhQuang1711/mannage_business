import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/const/enum/buttons_size/button_size.dart';
import 'package:mannager_business/ui/ingredients/views/create_ingredient_widget.dart';
import 'package:mannager_business/widget/app_bars/app_bar.dart';

import '../../widget/row_buttons/row_button.dart';

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
  final _formKey = GlobalKey<FormState>();
  String? _name;
  double? _price;
  double? _weight;
  double? _loss;

  void _onUpdateName(String? value) {
    _name = value;
    setState(() {});
  }

  void _onUpdatePrice(double? value) {
    _price = value;
    setState(() {});
  }

  void _onUpdateWeight(double? value) {
    _weight = value;
    setState(() {});
  }

  void _onUpdateLoss(double? value) {
    _loss = value;
    setState(() {});
  }

  void _onCreate() {
    if (_formKey.currentState?.validate() == true) {
      //TODO SOMETHING
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          const BusinessAppbar(canBack: true, title: "Thêm mới nguyên liệu"),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Expanded(
                flex: 2,
                child: Placeholder(),
              ),
              const SizedBox(height: 30),
              Expanded(
                flex: 4,
                child: CreateIngredientWidget(
                  onUpdateLoss: _onUpdateLoss,
                  onUpdateName: _onUpdateName,
                  onUpdatePrice: _onUpdatePrice,
                  onUpdateWeight: _onUpdateWeight,
                ),
              ),
              const Spacer(),
              Expanded(
                child: BusinessRowButton(
                  onTapAccept: _onCreate,
                  contentAccept: "Thêm mới",
                  acceptColor: BusinessColors.lightOrange,
                  buttonSize: ButtonSize.SIZE_32,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
