// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      name: json['Name'] as String?,
      price: (json['Price'] as num?)?.toDouble(),
      cost: (json['Cost'] as num?)?.toDouble(),
      percentProfit: (json['PercentProfit'] as num?)?.toDouble(),
      imagePath: json['Image'] as String?,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'Price': instance.price,
      'Cost': instance.cost,
      'PercentProfit': instance.percentProfit,
      'Image': instance.imagePath,
    };
