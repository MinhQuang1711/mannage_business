import 'package:flutter/material.dart';
import 'package:mannager_business/const/defautl_padding.dart';
import 'package:mannager_business/ui/histories/views/sell_bills/views/detail_sell_bills/widgets/payment_bar.dart';
import 'package:mannager_business/ui/sell/views/orders/views/product_bar.dart';
import 'package:mannager_business/widget/titles/title.dart';
import 'package:mannager_business/widget/top_bars.dart/top_bar.dart';

class DeatailSellBill extends StatelessWidget {
  const DeatailSellBill({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BusinessTopBar(title: "Chi tiết đơn hàng"),
        Container(
          padding: defaultPadding,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BusinessTitle(title: "Sản phẩm"),
              ProductBar(orderDetailList: []),
              BusinessTitle(title: "Thanh toán"),
              SizedBox(height: 10),
              DetailHistoryPaymentBar(
                paymentType: "Chuyển khỏan",
                totalProducts: 2,
                totalPrice: 110000,
              ),
            ],
          ),
        )
      ],
    );
  }
}
