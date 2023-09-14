import 'package:mannager_business/domains/models/products.dart';

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
