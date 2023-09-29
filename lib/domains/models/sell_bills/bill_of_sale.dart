import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_of_sale.freezed.dart';
part 'bill_of_sale.g.dart';

@Freezed(fromJson: true, toJson: true)
class BillOfSale with _$BillOfSale {
  const factory BillOfSale({
    @JsonKey(name: "Id") String? id,
    @JsonKey(name: "Discount") double? discount,
    @JsonKey(name: "SaleDate") DateTime? saleDate,
    @JsonKey(name: "FinalPrice") double? finalPrice,
    @JsonKey(name: "TotalPrice") double? totalPrice,
    @JsonKey(name: "PaymentType") int? paymentType,
  }) = _BillOfSale;

  factory BillOfSale.fromJson(Map<String, dynamic> json) =>
      _$BillOfSaleFromJson(json);
}
