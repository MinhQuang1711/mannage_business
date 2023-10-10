import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mannager_business/domains/models/detail_product/detail_product.dart';

import '../../../domains/models/products/product.dart';

part 'product_event.freezed.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.getProduct({String? name}) = GET_PRODUCT;
  const factory ProductEvent.createProduct({required Product product}) =
      CREATE_PRODUCT;
  const factory ProductEvent.addMoreIngredient(DetailProduct value) =
      ADD_MORE_INGREDIENT;
}
