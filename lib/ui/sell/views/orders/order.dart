import 'package:flutter/material.dart';
import 'package:mannager_business/const/colors/business_colors.dart';
import 'package:mannager_business/domains/models/order_detai.dart';
import 'package:mannager_business/domains/models/products.dart';
import 'package:mannager_business/ui/sell/views/orders/services/service.dart';
import 'package:mannager_business/ui/sell/views/orders/views/payment_bar.dart';
import 'package:mannager_business/ui/sell/views/orders/views/product_bar.dart';
import 'package:mannager_business/ui/sell/views/orders/widgets/row_buttons.dart';
import 'package:mannager_business/widget/titles/title.dart';
import 'package:mannager_business/widget/top_bars.dart/top_bar.dart';
import 'package:mannager_business/widget/unfocus_widget.dart';

class Order extends StatelessWidget {
  const Order({super.key, required this.productList});
  final List<Product> productList;

  @override
  Widget build(BuildContext context) {
    return OrderPage(productList: productList);
  }
}

class OrderPage extends StatefulWidget {
  const OrderPage({super.key, required this.productList});
  final List<Product> productList;
  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List<Product> _productWithOutDuplicateList = [];
  List<OrderDetail> _orderDetailList = [];

  void _withOutDuplicate() {
    _productWithOutDuplicateList = widget.productList.toSet().toList();
  }

  void _createOrderDetail() {
    OrderService orderService = OrderService();
    _orderDetailList = orderService.createOrderDetail(
      productDuplicates: _productWithOutDuplicateList,
      productList: widget.productList,
    );
  }

  @override
  void initState() {
    super.initState();
    _withOutDuplicate();
    _createOrderDetail();
  }

  @override
  Widget build(BuildContext context) {
    return UnfocusWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const BusinessTopBar(title: "Hóa đơn bán hàng"),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BusinessTitle(title: "Sản phẩm (${widget.productList.length})"),
                const SizedBox(height: 10),
                ProductBar(orderDetailList: _orderDetailList),
                const SizedBox(height: 10),
                const BusinessTitle(title: "Thanh toán"),
                const SizedBox(height: 10),
                PaymentBar(productList: widget.productList),
                const SizedBox(height: 30),
                PaymentButton(
                  backgroundColor: BusinessColors.blue,
                  onPayment: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
