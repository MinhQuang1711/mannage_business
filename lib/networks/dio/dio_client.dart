import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mannager_business/configs/server.dart';
import 'package:mannager_business/networks/interceptors.dart';

import '../requets/request.dart';

class DioClient {
  String? server;
  String? contentType;
  Dio _dioClient = Dio();
  DioClient({
    this.server,
    this.contentType,
  }) {
    final options = BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      baseUrl: server ?? defaultServer,
      contentType: contentType ?? ContentType.json.toString(),
    );
    _dioClient = Dio(options);
    _dioClient.interceptors.add(BusinessInterceptor());
  }

  Future<dynamic> makeRequest({required NetworkRequest networkRequest}) async {
    dynamic data = networkRequest.body?.when(
      json: (json) => json,
      list: (list) => list,
      text: (text) => text,
      upload: (file) => file,
      bytes: (bytes) => bytes,
    );
    final response = (
      await _dioClient.request(
        data: data,
        networkRequest.endPoint,
        queryParameters: networkRequest.parameter,
        options: Options(
          method: networkRequest.method.name,
          contentType: networkRequest.contentType,
        ),
      ),
    );
    return response;
  }
}
