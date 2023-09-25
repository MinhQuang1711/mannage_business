// ignore_for_file: constant_identifier_names

import 'package:mannager_business/networks/requets/data_requests/data_request.dart';

enum RequesMethod { POST, PUT, DELETE, GET }

class NetworkRequest {
  String endPoint;
  DataRequest? body;
  String? contentType;
  RequesMethod method;
  Map<String, dynamic>? parameter;
  NetworkRequest({
    this.body,
    this.parameter,
    this.contentType,
    required this.endPoint,
    required this.method,
  });
}
