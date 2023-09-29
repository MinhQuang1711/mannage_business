import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_product.freezed.dart';
part 'detail_product.g.dart';

@Freezed(fromJson: true, toJson: true)
class DetailProduct with _$DetailProduct {
  const factory DetailProduct({
    @JsonKey(name: "ProductName") String? productName,
    @JsonKey(name: "ProductID") String? productID,
    @JsonKey(name: "IngredientID") String? ingredientID,
    @JsonKey(name: "IngredientName") String? ingredientName,
    @JsonKey(name: "Weight") double? weight,
    @JsonKey(name: "SumCost") double? sumCost,
  }) = _DetailProduct;

  factory DetailProduct.fromJson(Map<String, dynamic> json) =>
      _$DetailProductFromJson(json);
}
