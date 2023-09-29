// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_bill_of_sale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailBillOfSale _$$_DetailBillOfSaleFromJson(Map<String, dynamic> json) =>
    _$_DetailBillOfSale(
      billId: json['BillId'] as String?,
      productID: json['ProductID'] as String?,
      quantity: json['Quantity'] as int?,
      totalPrice: (json['TotalPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DetailBillOfSaleToJson(_$_DetailBillOfSale instance) =>
    <String, dynamic>{
      'BillId': instance.billId,
      'ProductID': instance.productID,
      'Quantity': instance.quantity,
      'TotalPrice': instance.totalPrice,
    };
