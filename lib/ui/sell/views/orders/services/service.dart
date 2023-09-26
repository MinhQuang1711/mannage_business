import '../../../../../domains/models/order_detai.dart';
import '../../../../../domains/models/products/product.dart';

class OrderService {
  int countQuantityOfProducts(
    Product value, {
    required List<Product> productList,
  }) {
    int quantity = 0;
    for (var element in productList) {
      if (element.name == value.name) {
        quantity++;
      }
    }
    return quantity;
  }

  double _totalPriceOfProduct({required int quantity, required double price}) {
    return quantity * price;
  }

  List<OrderDetail> createOrderDetail(
      {required List<Product> productDuplicates,
      required List<Product> productList}) {
    List<OrderDetail> orderDetailList = [];
    for (var element in productDuplicates) {
      int quantity = countQuantityOfProducts(element, productList: productList);
      double totalPrice =
          _totalPriceOfProduct(quantity: quantity, price: element.price ?? 0);
      OrderDetail orderDetail = OrderDetail(
        product: element,
        quantity: quantity,
        totalPrice: totalPrice,
      );

      orderDetailList.add(orderDetail);
    }
    return orderDetailList;
  }
}
