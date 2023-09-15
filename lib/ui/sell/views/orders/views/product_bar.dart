import 'package:flutter/material.dart';

import '../../../../../domains/models/order_detai.dart';
import '../../../../../widget/list_views/list_view.dart';
import '../widgets/list_view.dart';

class ProductBar extends StatelessWidget {
  const ProductBar({super.key, required this.orderDetailList});
  final List<OrderDetail> orderDetailList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: BusinessListView<OrderDetail>(
        items: orderDetailList,
        child: OrderListView(
          orderDetailList: orderDetailList,
        ),
      ),
    );
  }
}
