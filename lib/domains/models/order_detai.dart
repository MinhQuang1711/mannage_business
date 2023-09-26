
import 'package:mannager_business/domains/models/products/product.dart';

class OrderDetail {
  final int? quantity;
  final Product? product;
  final double? totalPrice;

  OrderDetail({this.product, this.quantity, this.totalPrice});
}
