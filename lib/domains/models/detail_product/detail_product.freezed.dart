// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailProduct _$DetailProductFromJson(Map<String, dynamic> json) {
  return _DetailProduct.fromJson(json);
}

/// @nodoc
mixin _$DetailProduct {
  @JsonKey(name: "ProductName")
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: "ProductID")
  String? get productID => throw _privateConstructorUsedError;
  @JsonKey(name: "IngredientID")
  String? get ingredientID => throw _privateConstructorUsedError;
  @JsonKey(name: "IngredientName")
  String? get ingredientName => throw _privateConstructorUsedError;
  @JsonKey(name: "Weight")
  double? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: "SumCost")
  double? get sumCost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailProductCopyWith<DetailProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailProductCopyWith<$Res> {
  factory $DetailProductCopyWith(
          DetailProduct value, $Res Function(DetailProduct) then) =
      _$DetailProductCopyWithImpl<$Res, DetailProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "ProductName") String? productName,
      @JsonKey(name: "ProductID") String? productID,
      @JsonKey(name: "IngredientID") String? ingredientID,
      @JsonKey(name: "IngredientName") String? ingredientName,
      @JsonKey(name: "Weight") double? weight,
      @JsonKey(name: "SumCost") double? sumCost});
}

/// @nodoc
class _$DetailProductCopyWithImpl<$Res, $Val extends DetailProduct>
    implements $DetailProductCopyWith<$Res> {
  _$DetailProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = freezed,
    Object? productID = freezed,
    Object? ingredientID = freezed,
    Object? ingredientName = freezed,
    Object? weight = freezed,
    Object? sumCost = freezed,
  }) {
    return _then(_value.copyWith(
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productID: freezed == productID
          ? _value.productID
          : productID // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredientID: freezed == ingredientID
          ? _value.ingredientID
          : ingredientID // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredientName: freezed == ingredientName
          ? _value.ingredientName
          : ingredientName // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      sumCost: freezed == sumCost
          ? _value.sumCost
          : sumCost // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailProductCopyWith<$Res>
    implements $DetailProductCopyWith<$Res> {
  factory _$$_DetailProductCopyWith(
          _$_DetailProduct value, $Res Function(_$_DetailProduct) then) =
      __$$_DetailProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ProductName") String? productName,
      @JsonKey(name: "ProductID") String? productID,
      @JsonKey(name: "IngredientID") String? ingredientID,
      @JsonKey(name: "IngredientName") String? ingredientName,
      @JsonKey(name: "Weight") double? weight,
      @JsonKey(name: "SumCost") double? sumCost});
}

/// @nodoc
class __$$_DetailProductCopyWithImpl<$Res>
    extends _$DetailProductCopyWithImpl<$Res, _$_DetailProduct>
    implements _$$_DetailProductCopyWith<$Res> {
  __$$_DetailProductCopyWithImpl(
      _$_DetailProduct _value, $Res Function(_$_DetailProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = freezed,
    Object? productID = freezed,
    Object? ingredientID = freezed,
    Object? ingredientName = freezed,
    Object? weight = freezed,
    Object? sumCost = freezed,
  }) {
    return _then(_$_DetailProduct(
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productID: freezed == productID
          ? _value.productID
          : productID // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredientID: freezed == ingredientID
          ? _value.ingredientID
          : ingredientID // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredientName: freezed == ingredientName
          ? _value.ingredientName
          : ingredientName // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      sumCost: freezed == sumCost
          ? _value.sumCost
          : sumCost // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailProduct implements _DetailProduct {
  const _$_DetailProduct(
      {@JsonKey(name: "ProductName") this.productName,
      @JsonKey(name: "ProductID") this.productID,
      @JsonKey(name: "IngredientID") this.ingredientID,
      @JsonKey(name: "IngredientName") this.ingredientName,
      @JsonKey(name: "Weight") this.weight,
      @JsonKey(name: "SumCost") this.sumCost});

  factory _$_DetailProduct.fromJson(Map<String, dynamic> json) =>
      _$$_DetailProductFromJson(json);

  @override
  @JsonKey(name: "ProductName")
  final String? productName;
  @override
  @JsonKey(name: "ProductID")
  final String? productID;
  @override
  @JsonKey(name: "IngredientID")
  final String? ingredientID;
  @override
  @JsonKey(name: "IngredientName")
  final String? ingredientName;
  @override
  @JsonKey(name: "Weight")
  final double? weight;
  @override
  @JsonKey(name: "SumCost")
  final double? sumCost;

  @override
  String toString() {
    return 'DetailProduct(productName: $productName, productID: $productID, ingredientID: $ingredientID, ingredientName: $ingredientName, weight: $weight, sumCost: $sumCost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailProduct &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productID, productID) ||
                other.productID == productID) &&
            (identical(other.ingredientID, ingredientID) ||
                other.ingredientID == ingredientID) &&
            (identical(other.ingredientName, ingredientName) ||
                other.ingredientName == ingredientName) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.sumCost, sumCost) || other.sumCost == sumCost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productName, productID,
      ingredientID, ingredientName, weight, sumCost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailProductCopyWith<_$_DetailProduct> get copyWith =>
      __$$_DetailProductCopyWithImpl<_$_DetailProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailProductToJson(
      this,
    );
  }
}

abstract class _DetailProduct implements DetailProduct {
  const factory _DetailProduct(
      {@JsonKey(name: "ProductName") final String? productName,
      @JsonKey(name: "ProductID") final String? productID,
      @JsonKey(name: "IngredientID") final String? ingredientID,
      @JsonKey(name: "IngredientName") final String? ingredientName,
      @JsonKey(name: "Weight") final double? weight,
      @JsonKey(name: "SumCost") final double? sumCost}) = _$_DetailProduct;

  factory _DetailProduct.fromJson(Map<String, dynamic> json) =
      _$_DetailProduct.fromJson;

  @override
  @JsonKey(name: "ProductName")
  String? get productName;
  @override
  @JsonKey(name: "ProductID")
  String? get productID;
  @override
  @JsonKey(name: "IngredientID")
  String? get ingredientID;
  @override
  @JsonKey(name: "IngredientName")
  String? get ingredientName;
  @override
  @JsonKey(name: "Weight")
  double? get weight;
  @override
  @JsonKey(name: "SumCost")
  double? get sumCost;
  @override
  @JsonKey(ignore: true)
  _$$_DetailProductCopyWith<_$_DetailProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
