// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataRequest {
  Object get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) json,
    required TResult Function(List<String> data) list,
    required TResult Function(String data) text,
    required TResult Function(dio.FormData data) upload,
    required TResult Function(Uint8List data) bytes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> data)? json,
    TResult? Function(List<String> data)? list,
    TResult? Function(String data)? text,
    TResult? Function(dio.FormData data)? upload,
    TResult? Function(Uint8List data)? bytes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(List<String> data)? list,
    TResult Function(String data)? text,
    TResult Function(dio.FormData data)? upload,
    TResult Function(Uint8List data)? bytes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Json value) json,
    required TResult Function(_List value) list,
    required TResult Function(_Text value) text,
    required TResult Function(_File value) upload,
    required TResult Function(_Unit value) bytes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Json value)? json,
    TResult? Function(_List value)? list,
    TResult? Function(_Text value)? text,
    TResult? Function(_File value)? upload,
    TResult? Function(_Unit value)? bytes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Json value)? json,
    TResult Function(_List value)? list,
    TResult Function(_Text value)? text,
    TResult Function(_File value)? upload,
    TResult Function(_Unit value)? bytes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataRequestCopyWith<$Res> {
  factory $DataRequestCopyWith(
          DataRequest value, $Res Function(DataRequest) then) =
      _$DataRequestCopyWithImpl<$Res, DataRequest>;
}

/// @nodoc
class _$DataRequestCopyWithImpl<$Res, $Val extends DataRequest>
    implements $DataRequestCopyWith<$Res> {
  _$DataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_JsonCopyWith<$Res> {
  factory _$$_JsonCopyWith(_$_Json value, $Res Function(_$_Json) then) =
      __$$_JsonCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class __$$_JsonCopyWithImpl<$Res>
    extends _$DataRequestCopyWithImpl<$Res, _$_Json>
    implements _$$_JsonCopyWith<$Res> {
  __$$_JsonCopyWithImpl(_$_Json _value, $Res Function(_$_Json) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Json(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_Json implements _Json {
  const _$_Json(final Map<String, dynamic> data) : _data = data;

  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'DataRequest.json(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Json &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JsonCopyWith<_$_Json> get copyWith =>
      __$$_JsonCopyWithImpl<_$_Json>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) json,
    required TResult Function(List<String> data) list,
    required TResult Function(String data) text,
    required TResult Function(dio.FormData data) upload,
    required TResult Function(Uint8List data) bytes,
  }) {
    return json(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> data)? json,
    TResult? Function(List<String> data)? list,
    TResult? Function(String data)? text,
    TResult? Function(dio.FormData data)? upload,
    TResult? Function(Uint8List data)? bytes,
  }) {
    return json?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(List<String> data)? list,
    TResult Function(String data)? text,
    TResult Function(dio.FormData data)? upload,
    TResult Function(Uint8List data)? bytes,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Json value) json,
    required TResult Function(_List value) list,
    required TResult Function(_Text value) text,
    required TResult Function(_File value) upload,
    required TResult Function(_Unit value) bytes,
  }) {
    return json(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Json value)? json,
    TResult? Function(_List value)? list,
    TResult? Function(_Text value)? text,
    TResult? Function(_File value)? upload,
    TResult? Function(_Unit value)? bytes,
  }) {
    return json?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Json value)? json,
    TResult Function(_List value)? list,
    TResult Function(_Text value)? text,
    TResult Function(_File value)? upload,
    TResult Function(_Unit value)? bytes,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(this);
    }
    return orElse();
  }
}

abstract class _Json implements DataRequest {
  const factory _Json(final Map<String, dynamic> data) = _$_Json;

  @override
  Map<String, dynamic> get data;
  @JsonKey(ignore: true)
  _$$_JsonCopyWith<_$_Json> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ListCopyWith<$Res> {
  factory _$$_ListCopyWith(_$_List value, $Res Function(_$_List) then) =
      __$$_ListCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> data});
}

/// @nodoc
class __$$_ListCopyWithImpl<$Res>
    extends _$DataRequestCopyWithImpl<$Res, _$_List>
    implements _$$_ListCopyWith<$Res> {
  __$$_ListCopyWithImpl(_$_List _value, $Res Function(_$_List) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_List(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_List implements _List {
  const _$_List(final List<String> data) : _data = data;

  final List<String> _data;
  @override
  List<String> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'DataRequest.list(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_List &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListCopyWith<_$_List> get copyWith =>
      __$$_ListCopyWithImpl<_$_List>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) json,
    required TResult Function(List<String> data) list,
    required TResult Function(String data) text,
    required TResult Function(dio.FormData data) upload,
    required TResult Function(Uint8List data) bytes,
  }) {
    return list(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> data)? json,
    TResult? Function(List<String> data)? list,
    TResult? Function(String data)? text,
    TResult? Function(dio.FormData data)? upload,
    TResult? Function(Uint8List data)? bytes,
  }) {
    return list?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(List<String> data)? list,
    TResult Function(String data)? text,
    TResult Function(dio.FormData data)? upload,
    TResult Function(Uint8List data)? bytes,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Json value) json,
    required TResult Function(_List value) list,
    required TResult Function(_Text value) text,
    required TResult Function(_File value) upload,
    required TResult Function(_Unit value) bytes,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Json value)? json,
    TResult? Function(_List value)? list,
    TResult? Function(_Text value)? text,
    TResult? Function(_File value)? upload,
    TResult? Function(_Unit value)? bytes,
  }) {
    return list?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Json value)? json,
    TResult Function(_List value)? list,
    TResult Function(_Text value)? text,
    TResult Function(_File value)? upload,
    TResult Function(_Unit value)? bytes,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }
}

abstract class _List implements DataRequest {
  const factory _List(final List<String> data) = _$_List;

  @override
  List<String> get data;
  @JsonKey(ignore: true)
  _$$_ListCopyWith<_$_List> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TextCopyWith<$Res> {
  factory _$$_TextCopyWith(_$_Text value, $Res Function(_$_Text) then) =
      __$$_TextCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$_TextCopyWithImpl<$Res>
    extends _$DataRequestCopyWithImpl<$Res, _$_Text>
    implements _$$_TextCopyWith<$Res> {
  __$$_TextCopyWithImpl(_$_Text _value, $Res Function(_$_Text) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Text(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Text implements _Text {
  const _$_Text(this.data);

  @override
  final String data;

  @override
  String toString() {
    return 'DataRequest.text(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Text &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextCopyWith<_$_Text> get copyWith =>
      __$$_TextCopyWithImpl<_$_Text>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) json,
    required TResult Function(List<String> data) list,
    required TResult Function(String data) text,
    required TResult Function(dio.FormData data) upload,
    required TResult Function(Uint8List data) bytes,
  }) {
    return text(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> data)? json,
    TResult? Function(List<String> data)? list,
    TResult? Function(String data)? text,
    TResult? Function(dio.FormData data)? upload,
    TResult? Function(Uint8List data)? bytes,
  }) {
    return text?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(List<String> data)? list,
    TResult Function(String data)? text,
    TResult Function(dio.FormData data)? upload,
    TResult Function(Uint8List data)? bytes,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Json value) json,
    required TResult Function(_List value) list,
    required TResult Function(_Text value) text,
    required TResult Function(_File value) upload,
    required TResult Function(_Unit value) bytes,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Json value)? json,
    TResult? Function(_List value)? list,
    TResult? Function(_Text value)? text,
    TResult? Function(_File value)? upload,
    TResult? Function(_Unit value)? bytes,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Json value)? json,
    TResult Function(_List value)? list,
    TResult Function(_Text value)? text,
    TResult Function(_File value)? upload,
    TResult Function(_Unit value)? bytes,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class _Text implements DataRequest {
  const factory _Text(final String data) = _$_Text;

  @override
  String get data;
  @JsonKey(ignore: true)
  _$$_TextCopyWith<_$_Text> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FileCopyWith<$Res> {
  factory _$$_FileCopyWith(_$_File value, $Res Function(_$_File) then) =
      __$$_FileCopyWithImpl<$Res>;
  @useResult
  $Res call({dio.FormData data});
}

/// @nodoc
class __$$_FileCopyWithImpl<$Res>
    extends _$DataRequestCopyWithImpl<$Res, _$_File>
    implements _$$_FileCopyWith<$Res> {
  __$$_FileCopyWithImpl(_$_File _value, $Res Function(_$_File) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_File(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dio.FormData,
    ));
  }
}

/// @nodoc

class _$_File implements _File {
  const _$_File(this.data);

  @override
  final dio.FormData data;

  @override
  String toString() {
    return 'DataRequest.upload(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_File &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FileCopyWith<_$_File> get copyWith =>
      __$$_FileCopyWithImpl<_$_File>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) json,
    required TResult Function(List<String> data) list,
    required TResult Function(String data) text,
    required TResult Function(dio.FormData data) upload,
    required TResult Function(Uint8List data) bytes,
  }) {
    return upload(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> data)? json,
    TResult? Function(List<String> data)? list,
    TResult? Function(String data)? text,
    TResult? Function(dio.FormData data)? upload,
    TResult? Function(Uint8List data)? bytes,
  }) {
    return upload?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(List<String> data)? list,
    TResult Function(String data)? text,
    TResult Function(dio.FormData data)? upload,
    TResult Function(Uint8List data)? bytes,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Json value) json,
    required TResult Function(_List value) list,
    required TResult Function(_Text value) text,
    required TResult Function(_File value) upload,
    required TResult Function(_Unit value) bytes,
  }) {
    return upload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Json value)? json,
    TResult? Function(_List value)? list,
    TResult? Function(_Text value)? text,
    TResult? Function(_File value)? upload,
    TResult? Function(_Unit value)? bytes,
  }) {
    return upload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Json value)? json,
    TResult Function(_List value)? list,
    TResult Function(_Text value)? text,
    TResult Function(_File value)? upload,
    TResult Function(_Unit value)? bytes,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(this);
    }
    return orElse();
  }
}

abstract class _File implements DataRequest {
  const factory _File(final dio.FormData data) = _$_File;

  @override
  dio.FormData get data;
  @JsonKey(ignore: true)
  _$$_FileCopyWith<_$_File> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnitCopyWith<$Res> {
  factory _$$_UnitCopyWith(_$_Unit value, $Res Function(_$_Unit) then) =
      __$$_UnitCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List data});
}

/// @nodoc
class __$$_UnitCopyWithImpl<$Res>
    extends _$DataRequestCopyWithImpl<$Res, _$_Unit>
    implements _$$_UnitCopyWith<$Res> {
  __$$_UnitCopyWithImpl(_$_Unit _value, $Res Function(_$_Unit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Unit(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_Unit implements _Unit {
  const _$_Unit(this.data);

  @override
  final Uint8List data;

  @override
  String toString() {
    return 'DataRequest.bytes(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unit &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnitCopyWith<_$_Unit> get copyWith =>
      __$$_UnitCopyWithImpl<_$_Unit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> data) json,
    required TResult Function(List<String> data) list,
    required TResult Function(String data) text,
    required TResult Function(dio.FormData data) upload,
    required TResult Function(Uint8List data) bytes,
  }) {
    return bytes(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> data)? json,
    TResult? Function(List<String> data)? list,
    TResult? Function(String data)? text,
    TResult? Function(dio.FormData data)? upload,
    TResult? Function(Uint8List data)? bytes,
  }) {
    return bytes?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> data)? json,
    TResult Function(List<String> data)? list,
    TResult Function(String data)? text,
    TResult Function(dio.FormData data)? upload,
    TResult Function(Uint8List data)? bytes,
    required TResult orElse(),
  }) {
    if (bytes != null) {
      return bytes(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Json value) json,
    required TResult Function(_List value) list,
    required TResult Function(_Text value) text,
    required TResult Function(_File value) upload,
    required TResult Function(_Unit value) bytes,
  }) {
    return bytes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Json value)? json,
    TResult? Function(_List value)? list,
    TResult? Function(_Text value)? text,
    TResult? Function(_File value)? upload,
    TResult? Function(_Unit value)? bytes,
  }) {
    return bytes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Json value)? json,
    TResult Function(_List value)? list,
    TResult Function(_Text value)? text,
    TResult Function(_File value)? upload,
    TResult Function(_Unit value)? bytes,
    required TResult orElse(),
  }) {
    if (bytes != null) {
      return bytes(this);
    }
    return orElse();
  }
}

abstract class _Unit implements DataRequest {
  const factory _Unit(final Uint8List data) = _$_Unit;

  @override
  Uint8List get data;
  @JsonKey(ignore: true)
  _$$_UnitCopyWith<_$_Unit> get copyWith => throw _privateConstructorUsedError;
}
