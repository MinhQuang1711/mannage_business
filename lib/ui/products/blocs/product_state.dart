import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mannager_business/domains/models/detail_product/detail_product.dart';
import '../../../domains/models/products/product.dart';

part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.init() = INIT;
  const factory ProductState.failure({required String message}) = FAILURE;
  const factory ProductState.loading() = LOADING;
  const factory ProductState.createSuccess(String message) = CREATE_SUCCESS;
  const factory ProductState.getProductSuccess(List<Product> list) =
      GET_SUCCESS;

  const factory ProductState.addIngredientSuccess(DetailProduct detailProduct) =
      INGREDIENT_SUCCESS;
}
