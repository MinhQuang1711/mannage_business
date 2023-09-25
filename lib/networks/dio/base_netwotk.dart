import 'package:dio/dio.dart';
import 'package:mannager_business/networks/data_respones/data_response.dart';
import 'package:mannager_business/networks/data_respones/response_faild.dart';

import '../../ultils/loger.dart';
import '../data_respones/response_success.dart';
import '../requets/request.dart';
import 'dio_client.dart';

class BaseNetwork {
  Future<DataResponse<T>> excuter<T>({
    required NetworkRequest networkRequest,
    required T Function(dynamic) parser,
  }) async {
    final dioClient = DioClient(
      contentType: networkRequest.contentType,
    );
    try {
      final response =
          await dioClient.makeRequest(networkRequest: networkRequest);
      return ResponseSuccess(parser.call(response));
    } catch (e, s) {
      logDebug(e);
      logDebug(s);
      if (e is DioException) {
        logDebug(e.response?.statusCode);
        logDebug("============");
        return ResponseFaild(e.response?.data.toString() ?? "");
      }
      return ResponseFaild(e.toString());
    }
  }
}
