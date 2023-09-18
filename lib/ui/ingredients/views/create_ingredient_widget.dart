import 'package:flutter/material.dart';

import '../../../const/messages/message.dart';
import '../../../ultils/validates/validate.dart';
import '../../../widget/text_fields/custom_text_fields.dart';

class CreateIngredientWidget extends StatefulWidget {
  const CreateIngredientWidget({
    super.key,
    required this.onUpdateName,
    required this.onUpdatePrice,
    required this.onUpdateWeight,
    required this.onUpdateLoss,
  });
  final Function(String?) onUpdateName;
  final Function(double?) onUpdatePrice;
  final Function(double?) onUpdateWeight;
  final Function(double?) onUpdateLoss;

  @override
  State<CreateIngredientWidget> createState() => _CreateIngredientWidgetState();
}

class _CreateIngredientWidgetState extends State<CreateIngredientWidget> {
  final _businessValidate = BusinessValidate();
  final _name = TextEditingController();
  final _price = TextEditingController();
  final _loss = TextEditingController();
  final _netWeight = TextEditingController();

  void _nameOnChanged(String? value) {
    widget.onUpdateName(value);
  }

  void _priceOnChanged(String? value) {
    widget.onUpdatePrice(double.tryParse(value!));
  }

  void _netWeightOnChanged(String? value) {
    widget.onUpdateWeight(double.tryParse(value!));
  }

  void _lossOnChanged(String? value) {
    widget.onUpdateLoss(double.tryParse(value!));
  }

  String? _priceValidate(String? input) {
    if (_businessValidate.nullCheck(input) != null) {
      return _businessValidate.nullCheck(input);
    } else if (_businessValidate.inputThanZero(input)) {
      return null;
    }
    return BusinessMessage.importPriceError;
  }

  String? _weightValidate(String? input) {
    if (_businessValidate.nullCheck(input) != null) {
      return _businessValidate.nullCheck(input);
    } else if (_businessValidate.inputThanZero(input)) {
      return null;
    }
    return BusinessMessage.weightError;
  }

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
    return Column(
      children: [
        Expanded(
          child: CustomTextField().outline(
            controller: _name,
            onChanged: _nameOnChanged,
            hintText: "Nhập tên nguyên liệu",
            validate: _businessValidate.nullCheck,
          ),
        ),
        Expanded(
          child: CustomTextField().outline(
            controller: _price,
            validate: _priceValidate,
            onChanged: _priceOnChanged,
            sufIcon: const Text("vnđ"),
            hintText: "Nhập Giá nguyên liệu",
            keyBoardType: TextInputType.number,
          ),
        ),
        Expanded(
          child: CustomTextField().outline(
            controller: _netWeight,
            validate: _weightValidate,
            sufIcon: const Text("gram"),
            onChanged: _netWeightOnChanged,
            keyBoardType: TextInputType.number,
            hintText: "Nhập khối lượng tịnh (g)",
          ),
        ),
        Expanded(
          child: CustomTextField().outline(
            controller: _loss,
            sufIcon: const Text("%"),
            onChanged: _lossOnChanged,
            hintText: "Nhập mức hao hụt (%)",
            keyBoardType: TextInputType.number,
          ),
        ),
      ],
    );
  }
}
