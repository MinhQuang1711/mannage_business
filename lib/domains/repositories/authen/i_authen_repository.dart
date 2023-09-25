import 'package:mannager_business/domains/models/tokens/token.dart';
import 'package:mannager_business/networks/data_respones/data_response.dart';
import 'package:mannager_business/networks/dio/base_netwotk.dart';

abstract class IAuthenRepository extends BaseNetwork {
  Future<DataResponse<Token>> login({
    required String userName,
    required String password,
  });
}
