import 'package:mannager_business/domains/models/order_detai.dart';

class Order {
  final List<OrderDetail>? orderDetails;
  final double? totalPrice;

  Order({this.orderDetails, this.totalPrice});
}
