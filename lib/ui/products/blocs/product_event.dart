import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domains/models/products/product.dart';

part 'product_event.freezed.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.getProduct({String? name}) = GET_PRODUCT;
  const factory ProductEvent.createProduct({required Product product}) =
      CREATE_PRODUCT;
}
