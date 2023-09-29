import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_bill_of_sale.freezed.dart';
part 'detail_bill_of_sale.g.dart';

@Freezed(fromJson: true, toJson: true)
class DetailBillOfSale with _$DetailBillOfSale {
  const factory DetailBillOfSale({
    @JsonKey(name: "BillId") String? billId,
    @JsonKey(name: "ProductID") String? productID,
    @JsonKey(name: "Quantity") int? quantity,
    @JsonKey(name: "TotalPrice") double? totalPrice,
  }) = _DetailBillOfSale;

  factory DetailBillOfSale.fromJson(Map<String, dynamic> json) =>
      _$DetailBillOfSaleFromJson(json);
}
