import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domains/models/products/product.dart';

part 'sell_state.freezed.dart';

@freezed
class SellState with _$SellState {
  const factory SellState.init() = INIT;
  const factory SellState.failure({required String message}) = FAILURE;
  const factory SellState.loading() = LOADING;
  const factory SellState.getProductSuccess(List<Product> list) = GET_SUCCESS;
}
