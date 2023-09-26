import '../../domains/models/products/product.dart';

extension ProductListExtension on List<Product> {
  double getTotalPrice() {
    double total = 0;
    for (var element in this) {
      if (element.price != null) {
        total = total + element.price!;
      }
    }
    return total;
  }
}
