// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_bill_of_sale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailBillOfSale _$DetailBillOfSaleFromJson(Map<String, dynamic> json) {
  return _DetailBillOfSale.fromJson(json);
}

/// @nodoc
mixin _$DetailBillOfSale {
  @JsonKey(name: "BillId")
  String? get billId => throw _privateConstructorUsedError;
  @JsonKey(name: "ProductID")
  String? get productID => throw _privateConstructorUsedError;
  @JsonKey(name: "Quantity")
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "TotalPrice")
  double? get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailBillOfSaleCopyWith<DetailBillOfSale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailBillOfSaleCopyWith<$Res> {
  factory $DetailBillOfSaleCopyWith(
          DetailBillOfSale value, $Res Function(DetailBillOfSale) then) =
      _$DetailBillOfSaleCopyWithImpl<$Res, DetailBillOfSale>;
  @useResult
  $Res call(
      {@JsonKey(name: "BillId") String? billId,
      @JsonKey(name: "ProductID") String? productID,
      @JsonKey(name: "Quantity") int? quantity,
      @JsonKey(name: "TotalPrice") double? totalPrice});
}

/// @nodoc
class _$DetailBillOfSaleCopyWithImpl<$Res, $Val extends DetailBillOfSale>
    implements $DetailBillOfSaleCopyWith<$Res> {
  _$DetailBillOfSaleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billId = freezed,
    Object? productID = freezed,
    Object? quantity = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      billId: freezed == billId
          ? _value.billId
          : billId // ignore: cast_nullable_to_non_nullable
              as String?,
      productID: freezed == productID
          ? _value.productID
          : productID // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailBillOfSaleCopyWith<$Res>
    implements $DetailBillOfSaleCopyWith<$Res> {
  factory _$$_DetailBillOfSaleCopyWith(
          _$_DetailBillOfSale value, $Res Function(_$_DetailBillOfSale) then) =
      __$$_DetailBillOfSaleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "BillId") String? billId,
      @JsonKey(name: "ProductID") String? productID,
      @JsonKey(name: "Quantity") int? quantity,
      @JsonKey(name: "TotalPrice") double? totalPrice});
}

/// @nodoc
class __$$_DetailBillOfSaleCopyWithImpl<$Res>
    extends _$DetailBillOfSaleCopyWithImpl<$Res, _$_DetailBillOfSale>
    implements _$$_DetailBillOfSaleCopyWith<$Res> {
  __$$_DetailBillOfSaleCopyWithImpl(
      _$_DetailBillOfSale _value, $Res Function(_$_DetailBillOfSale) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? billId = freezed,
    Object? productID = freezed,
    Object? quantity = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_$_DetailBillOfSale(
      billId: freezed == billId
          ? _value.billId
          : billId // ignore: cast_nullable_to_non_nullable
              as String?,
      productID: freezed == productID
          ? _value.productID
          : productID // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailBillOfSale implements _DetailBillOfSale {
  const _$_DetailBillOfSale(
      {@JsonKey(name: "BillId") this.billId,
      @JsonKey(name: "ProductID") this.productID,
      @JsonKey(name: "Quantity") this.quantity,
      @JsonKey(name: "TotalPrice") this.totalPrice});

  factory _$_DetailBillOfSale.fromJson(Map<String, dynamic> json) =>
      _$$_DetailBillOfSaleFromJson(json);

  @override
  @JsonKey(name: "BillId")
  final String? billId;
  @override
  @JsonKey(name: "ProductID")
  final String? productID;
  @override
  @JsonKey(name: "Quantity")
  final int? quantity;
  @override
  @JsonKey(name: "TotalPrice")
  final double? totalPrice;

  @override
  String toString() {
    return 'DetailBillOfSale(billId: $billId, productID: $productID, quantity: $quantity, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailBillOfSale &&
            (identical(other.billId, billId) || other.billId == billId) &&
            (identical(other.productID, productID) ||
                other.productID == productID) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, billId, productID, quantity, totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailBillOfSaleCopyWith<_$_DetailBillOfSale> get copyWith =>
      __$$_DetailBillOfSaleCopyWithImpl<_$_DetailBillOfSale>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailBillOfSaleToJson(
      this,
    );
  }
}

abstract class _DetailBillOfSale implements DetailBillOfSale {
  const factory _DetailBillOfSale(
          {@JsonKey(name: "BillId") final String? billId,
          @JsonKey(name: "ProductID") final String? productID,
          @JsonKey(name: "Quantity") final int? quantity,
          @JsonKey(name: "TotalPrice") final double? totalPrice}) =
      _$_DetailBillOfSale;

  factory _DetailBillOfSale.fromJson(Map<String, dynamic> json) =
      _$_DetailBillOfSale.fromJson;

  @override
  @JsonKey(name: "BillId")
  String? get billId;
  @override
  @JsonKey(name: "ProductID")
  String? get productID;
  @override
  @JsonKey(name: "Quantity")
  int? get quantity;
  @override
  @JsonKey(name: "TotalPrice")
  double? get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$_DetailBillOfSaleCopyWith<_$_DetailBillOfSale> get copyWith =>
      throw _privateConstructorUsedError;
}
