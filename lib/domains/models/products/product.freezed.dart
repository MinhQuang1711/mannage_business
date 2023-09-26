// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: "Name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "Price")
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: "Cost")
  double? get cost => throw _privateConstructorUsedError;
  @JsonKey(name: "PercentProfit")
  double? get percentProfit => throw _privateConstructorUsedError;
  @JsonKey(name: "Image")
  String? get imagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: "Name") String? name,
      @JsonKey(name: "Price") double? price,
      @JsonKey(name: "Cost") double? cost,
      @JsonKey(name: "PercentProfit") double? percentProfit,
      @JsonKey(name: "Image") String? imagePath});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? cost = freezed,
    Object? percentProfit = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
      percentProfit: freezed == percentProfit
          ? _value.percentProfit
          : percentProfit // ignore: cast_nullable_to_non_nullable
              as double?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Name") String? name,
      @JsonKey(name: "Price") double? price,
      @JsonKey(name: "Cost") double? cost,
      @JsonKey(name: "PercentProfit") double? percentProfit,
      @JsonKey(name: "Image") String? imagePath});
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$_Product>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? cost = freezed,
    Object? percentProfit = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_$_Product(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      cost: freezed == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as double?,
      percentProfit: freezed == percentProfit
          ? _value.percentProfit
          : percentProfit // ignore: cast_nullable_to_non_nullable
              as double?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  const _$_Product(
      {@JsonKey(name: "Name") this.name,
      @JsonKey(name: "Price") this.price,
      @JsonKey(name: "Cost") this.cost,
      @JsonKey(name: "PercentProfit") this.percentProfit,
      @JsonKey(name: "Image") this.imagePath});

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  @JsonKey(name: "Name")
  final String? name;
  @override
  @JsonKey(name: "Price")
  final double? price;
  @override
  @JsonKey(name: "Cost")
  final double? cost;
  @override
  @JsonKey(name: "PercentProfit")
  final double? percentProfit;
  @override
  @JsonKey(name: "Image")
  final String? imagePath;

  @override
  String toString() {
    return 'Product(name: $name, price: $price, cost: $cost, percentProfit: $percentProfit, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.cost, cost) || other.cost == cost) &&
            (identical(other.percentProfit, percentProfit) ||
                other.percentProfit == percentProfit) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, price, cost, percentProfit, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@JsonKey(name: "Name") final String? name,
      @JsonKey(name: "Price") final double? price,
      @JsonKey(name: "Cost") final double? cost,
      @JsonKey(name: "PercentProfit") final double? percentProfit,
      @JsonKey(name: "Image") final String? imagePath}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  @JsonKey(name: "Name")
  String? get name;
  @override
  @JsonKey(name: "Price")
  double? get price;
  @override
  @JsonKey(name: "Cost")
  double? get cost;
  @override
  @JsonKey(name: "PercentProfit")
  double? get percentProfit;
  @override
  @JsonKey(name: "Image")
  String? get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
