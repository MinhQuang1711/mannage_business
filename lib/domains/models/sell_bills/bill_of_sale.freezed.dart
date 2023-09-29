// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_of_sale.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BillOfSale _$BillOfSaleFromJson(Map<String, dynamic> json) {
  return _BillOfSale.fromJson(json);
}

/// @nodoc
mixin _$BillOfSale {
  @JsonKey(name: "Id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "Discount")
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "SaleDate")
  DateTime? get saleDate => throw _privateConstructorUsedError;
  @JsonKey(name: "FinalPrice")
  double? get finalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "TotalPrice")
  double? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: "PaymentType")
  int? get paymentType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BillOfSaleCopyWith<BillOfSale> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillOfSaleCopyWith<$Res> {
  factory $BillOfSaleCopyWith(
          BillOfSale value, $Res Function(BillOfSale) then) =
      _$BillOfSaleCopyWithImpl<$Res, BillOfSale>;
  @useResult
  $Res call(
      {@JsonKey(name: "Id") String? id,
      @JsonKey(name: "Discount") double? discount,
      @JsonKey(name: "SaleDate") DateTime? saleDate,
      @JsonKey(name: "FinalPrice") double? finalPrice,
      @JsonKey(name: "TotalPrice") double? totalPrice,
      @JsonKey(name: "PaymentType") int? paymentType});
}

/// @nodoc
class _$BillOfSaleCopyWithImpl<$Res, $Val extends BillOfSale>
    implements $BillOfSaleCopyWith<$Res> {
  _$BillOfSaleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? discount = freezed,
    Object? saleDate = freezed,
    Object? finalPrice = freezed,
    Object? totalPrice = freezed,
    Object? paymentType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      saleDate: freezed == saleDate
          ? _value.saleDate
          : saleDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finalPrice: freezed == finalPrice
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BillOfSaleCopyWith<$Res>
    implements $BillOfSaleCopyWith<$Res> {
  factory _$$_BillOfSaleCopyWith(
          _$_BillOfSale value, $Res Function(_$_BillOfSale) then) =
      __$$_BillOfSaleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Id") String? id,
      @JsonKey(name: "Discount") double? discount,
      @JsonKey(name: "SaleDate") DateTime? saleDate,
      @JsonKey(name: "FinalPrice") double? finalPrice,
      @JsonKey(name: "TotalPrice") double? totalPrice,
      @JsonKey(name: "PaymentType") int? paymentType});
}

/// @nodoc
class __$$_BillOfSaleCopyWithImpl<$Res>
    extends _$BillOfSaleCopyWithImpl<$Res, _$_BillOfSale>
    implements _$$_BillOfSaleCopyWith<$Res> {
  __$$_BillOfSaleCopyWithImpl(
      _$_BillOfSale _value, $Res Function(_$_BillOfSale) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? discount = freezed,
    Object? saleDate = freezed,
    Object? finalPrice = freezed,
    Object? totalPrice = freezed,
    Object? paymentType = freezed,
  }) {
    return _then(_$_BillOfSale(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      saleDate: freezed == saleDate
          ? _value.saleDate
          : saleDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      finalPrice: freezed == finalPrice
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BillOfSale implements _BillOfSale {
  const _$_BillOfSale(
      {@JsonKey(name: "Id") this.id,
      @JsonKey(name: "Discount") this.discount,
      @JsonKey(name: "SaleDate") this.saleDate,
      @JsonKey(name: "FinalPrice") this.finalPrice,
      @JsonKey(name: "TotalPrice") this.totalPrice,
      @JsonKey(name: "PaymentType") this.paymentType});

  factory _$_BillOfSale.fromJson(Map<String, dynamic> json) =>
      _$$_BillOfSaleFromJson(json);

  @override
  @JsonKey(name: "Id")
  final String? id;
  @override
  @JsonKey(name: "Discount")
  final double? discount;
  @override
  @JsonKey(name: "SaleDate")
  final DateTime? saleDate;
  @override
  @JsonKey(name: "FinalPrice")
  final double? finalPrice;
  @override
  @JsonKey(name: "TotalPrice")
  final double? totalPrice;
  @override
  @JsonKey(name: "PaymentType")
  final int? paymentType;

  @override
  String toString() {
    return 'BillOfSale(id: $id, discount: $discount, saleDate: $saleDate, finalPrice: $finalPrice, totalPrice: $totalPrice, paymentType: $paymentType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BillOfSale &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.saleDate, saleDate) ||
                other.saleDate == saleDate) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, discount, saleDate, finalPrice, totalPrice, paymentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BillOfSaleCopyWith<_$_BillOfSale> get copyWith =>
      __$$_BillOfSaleCopyWithImpl<_$_BillOfSale>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BillOfSaleToJson(
      this,
    );
  }
}

abstract class _BillOfSale implements BillOfSale {
  const factory _BillOfSale(
      {@JsonKey(name: "Id") final String? id,
      @JsonKey(name: "Discount") final double? discount,
      @JsonKey(name: "SaleDate") final DateTime? saleDate,
      @JsonKey(name: "FinalPrice") final double? finalPrice,
      @JsonKey(name: "TotalPrice") final double? totalPrice,
      @JsonKey(name: "PaymentType") final int? paymentType}) = _$_BillOfSale;

  factory _BillOfSale.fromJson(Map<String, dynamic> json) =
      _$_BillOfSale.fromJson;

  @override
  @JsonKey(name: "Id")
  String? get id;
  @override
  @JsonKey(name: "Discount")
  double? get discount;
  @override
  @JsonKey(name: "SaleDate")
  DateTime? get saleDate;
  @override
  @JsonKey(name: "FinalPrice")
  double? get finalPrice;
  @override
  @JsonKey(name: "TotalPrice")
  double? get totalPrice;
  @override
  @JsonKey(name: "PaymentType")
  int? get paymentType;
  @override
  @JsonKey(ignore: true)
  _$$_BillOfSaleCopyWith<_$_BillOfSale> get copyWith =>
      throw _privateConstructorUsedError;
}
