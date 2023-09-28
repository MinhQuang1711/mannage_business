// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SellEvent {
  String? get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) getProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GET_PRODUCT value) getProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GET_PRODUCT value)? getProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GET_PRODUCT value)? getProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SellEventCopyWith<SellEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellEventCopyWith<$Res> {
  factory $SellEventCopyWith(SellEvent value, $Res Function(SellEvent) then) =
      _$SellEventCopyWithImpl<$Res, SellEvent>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$SellEventCopyWithImpl<$Res, $Val extends SellEvent>
    implements $SellEventCopyWith<$Res> {
  _$SellEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GET_PRODUCTCopyWith<$Res>
    implements $SellEventCopyWith<$Res> {
  factory _$$GET_PRODUCTCopyWith(
          _$GET_PRODUCT value, $Res Function(_$GET_PRODUCT) then) =
      __$$GET_PRODUCTCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$GET_PRODUCTCopyWithImpl<$Res>
    extends _$SellEventCopyWithImpl<$Res, _$GET_PRODUCT>
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
    return 'SellEvent.getProduct(name: $name)';
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
  }) {
    return getProduct(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? getProduct,
  }) {
    return getProduct?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? getProduct,
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
  }) {
    return getProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GET_PRODUCT value)? getProduct,
  }) {
    return getProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GET_PRODUCT value)? getProduct,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(this);
    }
    return orElse();
  }
}

abstract class GET_PRODUCT implements SellEvent {
  const factory GET_PRODUCT({final String? name}) = _$GET_PRODUCT;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$GET_PRODUCTCopyWith<_$GET_PRODUCT> get copyWith =>
      throw _privateConstructorUsedError;
}
