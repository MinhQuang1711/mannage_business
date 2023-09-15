import 'package:flutter/material.dart';
import 'package:mannager_business/const/maps/payment_type.dart';
import 'package:mannager_business/domains/models/products.dart';
import 'package:mannager_business/ui/sell/views/orders/widgets/input_drop_card.dart';
import 'package:mannager_business/ultils/extensions/money.dart';
import 'package:mannager_business/ultils/extensions/product_list.dart';
import 'package:mannager_business/widget/drop_down/drop_items/drop_items.dart';

import '../widgets/infor_card.dart';
import '../widgets/input_card.dart';

class PaymentBar extends StatefulWidget {
  const PaymentBar({super.key, required this.productList});
  final List<Product> productList;

  @override
  State<PaymentBar> createState() => _PaymentBarState();
}

class _PaymentBarState extends State<PaymentBar> {
  double _customerMoney = 0;
  double _returnMoney = 0;
  double _totalMoney = 0;
  MapEntry<String, int>? paymentValue;

  double _calculateMoneyReturn({
    required double customerMoney,
    required double totalMoney,
  }) {
    double moneyReturn = 0;
    moneyReturn = customerMoney != 0 ? customerMoney - totalMoney : 0;
    return moneyReturn;
  }

  void _customerMoneyOnChaned(String? value) {
    value != null ? _customerMoney = double.tryParse(value) ?? 0 : null;

    _returnMoney = _calculateMoneyReturn(
      customerMoney: _customerMoney,
      totalMoney: _totalMoney,
    );

    setState(() {});
  }

  void _getTotalMoney() {
    _totalMoney = widget.productList.getTotalPrice();
    setState(() {});
  }

  void _initPaymentType() {
    paymentValue = paymentTypeList.last;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _getTotalMoney();
    _initPaymentType();
  }

  @override
  Widget build(BuildContext context) {
    CustomDropItems customDropItems = CustomDropItems();
    return Column(
      children: [
        const SizedBox(height: 5),
        InputDropCard<MapEntry<String, int>>(
          valueName: paymentValue?.key,
          title: "Phương thức thanh toán",
          items: paymentTypeList,
          suggestions: customDropItems.payemtType,
        ),
        const Divider(thickness: 0.6),
        const SizedBox(height: 10),
        InfoCard(
          title: "Số lượng sản phẩm",
          content: widget.productList.length.toString(),
        ),
        InfoCard(
          title: "Tổng tiền sản phẩm",
          content: _totalMoney.toMoney(),
        ),
        InputCard(
          title: "Tiền khách trả",
          keyboardType: TextInputType.number,
          callBackUpdateValue: _customerMoneyOnChaned,
        ),
        InfoCard(
          title: "Tiền thừa trả khách",
          content: _returnMoney.toMoney(),
        )
      ],
    );
  }
}
