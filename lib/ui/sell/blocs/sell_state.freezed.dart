// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sell_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SellState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String message) failure,
    required TResult Function() loading,
    required TResult Function(List<Product> list) getProductSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String message)? failure,
    TResult? Function()? loading,
    TResult? Function(List<Product> list)? getProductSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function(List<Product> list)? getProductSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(INIT value) init,
    required TResult Function(FAILURE value) failure,
    required TResult Function(LOADING value) loading,
    required TResult Function(GET_SUCCESS value) getProductSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(INIT value)? init,
    TResult? Function(FAILURE value)? failure,
    TResult? Function(LOADING value)? loading,
    TResult? Function(GET_SUCCESS value)? getProductSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(INIT value)? init,
    TResult Function(FAILURE value)? failure,
    TResult Function(LOADING value)? loading,
    TResult Function(GET_SUCCESS value)? getProductSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellStateCopyWith<$Res> {
  factory $SellStateCopyWith(SellState value, $Res Function(SellState) then) =
      _$SellStateCopyWithImpl<$Res, SellState>;
}

/// @nodoc
class _$SellStateCopyWithImpl<$Res, $Val extends SellState>
    implements $SellStateCopyWith<$Res> {
  _$SellStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$INITCopyWith<$Res> {
  factory _$$INITCopyWith(_$INIT value, $Res Function(_$INIT) then) =
      __$$INITCopyWithImpl<$Res>;
}

/// @nodoc
class __$$INITCopyWithImpl<$Res> extends _$SellStateCopyWithImpl<$Res, _$INIT>
    implements _$$INITCopyWith<$Res> {
  __$$INITCopyWithImpl(_$INIT _value, $Res Function(_$INIT) _then)
      : super(_value, _then);
}

/// @nodoc

class _$INIT implements INIT {
  const _$INIT();

  @override
  String toString() {
    return 'SellState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$INIT);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String message) failure,
    required TResult Function() loading,
    required TResult Function(List<Product> list) getProductSuccess,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String message)? failure,
    TResult? Function()? loading,
    TResult? Function(List<Product> list)? getProductSuccess,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function(List<Product> list)? getProductSuccess,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(INIT value) init,
    required TResult Function(FAILURE value) failure,
    required TResult Function(LOADING value) loading,
    required TResult Function(GET_SUCCESS value) getProductSuccess,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(INIT value)? init,
    TResult? Function(FAILURE value)? failure,
    TResult? Function(LOADING value)? loading,
    TResult? Function(GET_SUCCESS value)? getProductSuccess,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(INIT value)? init,
    TResult Function(FAILURE value)? failure,
    TResult Function(LOADING value)? loading,
    TResult Function(GET_SUCCESS value)? getProductSuccess,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class INIT implements SellState {
  const factory INIT() = _$INIT;
}

/// @nodoc
abstract class _$$FAILURECopyWith<$Res> {
  factory _$$FAILURECopyWith(_$FAILURE value, $Res Function(_$FAILURE) then) =
      __$$FAILURECopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FAILURECopyWithImpl<$Res>
    extends _$SellStateCopyWithImpl<$Res, _$FAILURE>
    implements _$$FAILURECopyWith<$Res> {
  __$$FAILURECopyWithImpl(_$FAILURE _value, $Res Function(_$FAILURE) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FAILURE(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FAILURE implements FAILURE {
  const _$FAILURE({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SellState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FAILURE &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FAILURECopyWith<_$FAILURE> get copyWith =>
      __$$FAILURECopyWithImpl<_$FAILURE>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String message) failure,
    required TResult Function() loading,
    required TResult Function(List<Product> list) getProductSuccess,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String message)? failure,
    TResult? Function()? loading,
    TResult? Function(List<Product> list)? getProductSuccess,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function(List<Product> list)? getProductSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(INIT value) init,
    required TResult Function(FAILURE value) failure,
    required TResult Function(LOADING value) loading,
    required TResult Function(GET_SUCCESS value) getProductSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(INIT value)? init,
    TResult? Function(FAILURE value)? failure,
    TResult? Function(LOADING value)? loading,
    TResult? Function(GET_SUCCESS value)? getProductSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(INIT value)? init,
    TResult Function(FAILURE value)? failure,
    TResult Function(LOADING value)? loading,
    TResult Function(GET_SUCCESS value)? getProductSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FAILURE implements SellState {
  const factory FAILURE({required final String message}) = _$FAILURE;

  String get message;
  @JsonKey(ignore: true)
  _$$FAILURECopyWith<_$FAILURE> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LOADINGCopyWith<$Res> {
  factory _$$LOADINGCopyWith(_$LOADING value, $Res Function(_$LOADING) then) =
      __$$LOADINGCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LOADINGCopyWithImpl<$Res>
    extends _$SellStateCopyWithImpl<$Res, _$LOADING>
    implements _$$LOADINGCopyWith<$Res> {
  __$$LOADINGCopyWithImpl(_$LOADING _value, $Res Function(_$LOADING) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LOADING implements LOADING {
  const _$LOADING();

  @override
  String toString() {
    return 'SellState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LOADING);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String message) failure,
    required TResult Function() loading,
    required TResult Function(List<Product> list) getProductSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String message)? failure,
    TResult? Function()? loading,
    TResult? Function(List<Product> list)? getProductSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function(List<Product> list)? getProductSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(INIT value) init,
    required TResult Function(FAILURE value) failure,
    required TResult Function(LOADING value) loading,
    required TResult Function(GET_SUCCESS value) getProductSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(INIT value)? init,
    TResult? Function(FAILURE value)? failure,
    TResult? Function(LOADING value)? loading,
    TResult? Function(GET_SUCCESS value)? getProductSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(INIT value)? init,
    TResult Function(FAILURE value)? failure,
    TResult Function(LOADING value)? loading,
    TResult Function(GET_SUCCESS value)? getProductSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LOADING implements SellState {
  const factory LOADING() = _$LOADING;
}

/// @nodoc
abstract class _$$GET_SUCCESSCopyWith<$Res> {
  factory _$$GET_SUCCESSCopyWith(
          _$GET_SUCCESS value, $Res Function(_$GET_SUCCESS) then) =
      __$$GET_SUCCESSCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> list});
}

/// @nodoc
class __$$GET_SUCCESSCopyWithImpl<$Res>
    extends _$SellStateCopyWithImpl<$Res, _$GET_SUCCESS>
    implements _$$GET_SUCCESSCopyWith<$Res> {
  __$$GET_SUCCESSCopyWithImpl(
      _$GET_SUCCESS _value, $Res Function(_$GET_SUCCESS) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$GET_SUCCESS(
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$GET_SUCCESS implements GET_SUCCESS {
  const _$GET_SUCCESS(final List<Product> list) : _list = list;

  final List<Product> _list;
  @override
  List<Product> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'SellState.getProductSuccess(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GET_SUCCESS &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GET_SUCCESSCopyWith<_$GET_SUCCESS> get copyWith =>
      __$$GET_SUCCESSCopyWithImpl<_$GET_SUCCESS>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String message) failure,
    required TResult Function() loading,
    required TResult Function(List<Product> list) getProductSuccess,
  }) {
    return getProductSuccess(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String message)? failure,
    TResult? Function()? loading,
    TResult? Function(List<Product> list)? getProductSuccess,
  }) {
    return getProductSuccess?.call(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String message)? failure,
    TResult Function()? loading,
    TResult Function(List<Product> list)? getProductSuccess,
    required TResult orElse(),
  }) {
    if (getProductSuccess != null) {
      return getProductSuccess(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(INIT value) init,
    required TResult Function(FAILURE value) failure,
    required TResult Function(LOADING value) loading,
    required TResult Function(GET_SUCCESS value) getProductSuccess,
  }) {
    return getProductSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(INIT value)? init,
    TResult? Function(FAILURE value)? failure,
    TResult? Function(LOADING value)? loading,
    TResult? Function(GET_SUCCESS value)? getProductSuccess,
  }) {
    return getProductSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(INIT value)? init,
    TResult Function(FAILURE value)? failure,
    TResult Function(LOADING value)? loading,
    TResult Function(GET_SUCCESS value)? getProductSuccess,
    required TResult orElse(),
  }) {
    if (getProductSuccess != null) {
      return getProductSuccess(this);
    }
    return orElse();
  }
}

abstract class GET_SUCCESS implements SellState {
  const factory GET_SUCCESS(final List<Product> list) = _$GET_SUCCESS;

  List<Product> get list;
  @JsonKey(ignore: true)
  _$$GET_SUCCESSCopyWith<_$GET_SUCCESS> get copyWith =>
      throw _privateConstructorUsedError;
}
