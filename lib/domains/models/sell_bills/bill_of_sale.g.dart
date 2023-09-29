// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bill_of_sale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BillOfSale _$$_BillOfSaleFromJson(Map<String, dynamic> json) =>
    _$_BillOfSale(
      id: json['Id'] as String?,
      discount: (json['Discount'] as num?)?.toDouble(),
      saleDate: json['SaleDate'] == null
          ? null
          : DateTime.parse(json['SaleDate'] as String),
      finalPrice: (json['FinalPrice'] as num?)?.toDouble(),
      totalPrice: (json['TotalPrice'] as num?)?.toDouble(),
      paymentType: json['PaymentType'] as int?,
    );

Map<String, dynamic> _$$_BillOfSaleToJson(_$_BillOfSale instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Discount': instance.discount,
      'SaleDate': instance.saleDate?.toIso8601String(),
      'FinalPrice': instance.finalPrice,
      'TotalPrice': instance.totalPrice,
      'PaymentType': instance.paymentType,
    };
