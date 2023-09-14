import 'package:mannager_business/domains/models/products.dart';
import 'package:mannager_business/widget/cards/base_cards.dart';

abstract class Icard {
  BaseCard products(Product product);
}
