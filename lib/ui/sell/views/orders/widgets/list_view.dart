import 'package:flutter/material.dart';
import 'package:mannager_business/domains/models/order_detai.dart';
import 'package:mannager_business/ui/sell/views/orders/widgets/order_cart.dart';

class OrderListView extends StatelessWidget {
  const OrderListView({super.key, required this.orderDetailList});
  final List<OrderDetail> orderDetailList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orderDetailList.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: OrderCard(
          orderDetail: orderDetailList[index],
        ),
      ),
    );
  }
}
