import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart' as dio;
part 'data_request.freezed.dart';

@freezed
class DataRequest with _$DataRequest {
  const factory DataRequest.json(Map<String, dynamic> data) = _Json;
  const factory DataRequest.list(List<String> data) = _List;
  const factory DataRequest.text(String data) = _Text;
  const factory DataRequest.upload(dio.FormData data) = _File;
  const factory DataRequest.bytes(Uint8List data) = _Unit;
}
