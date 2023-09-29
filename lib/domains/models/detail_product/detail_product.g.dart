// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailProduct _$$_DetailProductFromJson(Map<String, dynamic> json) =>
    _$_DetailProduct(
      productName: json['ProductName'] as String?,
      productID: json['ProductID'] as String?,
      ingredientID: json['IngredientID'] as String?,
      ingredientName: json['IngredientName'] as String?,
      weight: (json['Weight'] as num?)?.toDouble(),
      sumCost: (json['SumCost'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DetailProductToJson(_$_DetailProduct instance) =>
    <String, dynamic>{
      'ProductName': instance.productName,
      'ProductID': instance.productID,
      'IngredientID': instance.ingredientID,
      'IngredientName': instance.ingredientName,
      'Weight': instance.weight,
      'SumCost': instance.sumCost,
    };
