// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getProduct,
    required TResult Function(Product product) createProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getProduct,
    TResult? Function(Product product)? createProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getProduct,
    TResult Function(Product product)? createProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GET_PRODUCT value) getProduct,
    required TResult Function(CREATE_PRODUCT value) createProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GET_PRODUCT value)? getProduct,
    TResult? Function(CREATE_PRODUCT value)? createProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GET_PRODUCT value)? getProduct,
    TResult Function(CREATE_PRODUCT value)? createProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GET_PRODUCTCopyWith<$Res> {
  factory _$$GET_PRODUCTCopyWith(
          _$GET_PRODUCT value, $Res Function(_$GET_PRODUCT) then) =
      __$$GET_PRODUCTCopyWithImpl<$Res>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$GET_PRODUCTCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GET_PRODUCT>
    implements _$$GET_PRODUCTCopyWith<$Res> {
  __$$GET_PRODUCTCopyWithImpl(
      _$GET_PRODUCT _value, $Res Function(_$GET_PRODUCT) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$GET_PRODUCT(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GET_PRODUCT implements GET_PRODUCT {
  const _$GET_PRODUCT({this.name});

  @override
  final String? name;

  @override
  String toString() {
    return 'ProductEvent.getProduct(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GET_PRODUCT &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GET_PRODUCTCopyWith<_$GET_PRODUCT> get copyWith =>
      __$$GET_PRODUCTCopyWithImpl<_$GET_PRODUCT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getProduct,
    required TResult Function(Product product) createProduct,
  }) {
    return getProduct(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getProduct,
    TResult? Function(Product product)? createProduct,
  }) {
    return getProduct?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getProduct,
    TResult Function(Product product)? createProduct,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GET_PRODUCT value) getProduct,
    required TResult Function(CREATE_PRODUCT value) createProduct,
  }) {
    return getProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GET_PRODUCT value)? getProduct,
    TResult? Function(CREATE_PRODUCT value)? createProduct,
  }) {
    return getProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GET_PRODUCT value)? getProduct,
    TResult Function(CREATE_PRODUCT value)? createProduct,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(this);
    }
    return orElse();
  }
}

abstract class GET_PRODUCT implements ProductEvent {
  const factory GET_PRODUCT({final String? name}) = _$GET_PRODUCT;

  String? get name;
  @JsonKey(ignore: true)
  _$$GET_PRODUCTCopyWith<_$GET_PRODUCT> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CREATE_PRODUCTCopyWith<$Res> {
  factory _$$CREATE_PRODUCTCopyWith(
          _$CREATE_PRODUCT value, $Res Function(_$CREATE_PRODUCT) then) =
      __$$CREATE_PRODUCTCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$CREATE_PRODUCTCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$CREATE_PRODUCT>
    implements _$$CREATE_PRODUCTCopyWith<$Res> {
  __$$CREATE_PRODUCTCopyWithImpl(
      _$CREATE_PRODUCT _value, $Res Function(_$CREATE_PRODUCT) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$CREATE_PRODUCT(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$CREATE_PRODUCT implements CREATE_PRODUCT {
  const _$CREATE_PRODUCT({required this.product});

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductEvent.createProduct(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CREATE_PRODUCT &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CREATE_PRODUCTCopyWith<_$CREATE_PRODUCT> get copyWith =>
      __$$CREATE_PRODUCTCopyWithImpl<_$CREATE_PRODUCT>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getProduct,
    required TResult Function(Product product) createProduct,
  }) {
    return createProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getProduct,
    TResult? Function(Product product)? createProduct,
  }) {
    return createProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getProduct,
    TResult Function(Product product)? createProduct,
    required TResult orElse(),
  }) {
    if (createProduct != null) {
      return createProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GET_PRODUCT value) getProduct,
    required TResult Function(CREATE_PRODUCT value) createProduct,
  }) {
    return createProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GET_PRODUCT value)? getProduct,
    TResult? Function(CREATE_PRODUCT value)? createProduct,
  }) {
    return createProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GET_PRODUCT value)? getProduct,
    TResult Function(CREATE_PRODUCT value)? createProduct,
    required TResult orElse(),
  }) {
    if (createProduct != null) {
      return createProduct(this);
    }
    return orElse();
  }
}

abstract class CREATE_PRODUCT implements ProductEvent {
  const factory CREATE_PRODUCT({required final Product product}) =
      _$CREATE_PRODUCT;

  Product get product;
  @JsonKey(ignore: true)
  _$$CREATE_PRODUCTCopyWith<_$CREATE_PRODUCT> get copyWith =>
      throw _privateConstructorUsedError;
}
