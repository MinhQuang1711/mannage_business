import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@Freezed(fromJson: true, toJson: true)
class Product with _$Product {
  const factory Product({
    @JsonKey(name: "Name") String? name,
    @JsonKey(name: "Price") double? price,
    @JsonKey(name: "Cost") double? cost,
    @JsonKey(name: "PercentProfit") double? percentProfit,
    @JsonKey(name: "Image") String? imagePath,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
