import 'package:mannager_business/domains/models/tokens/token.dart';
import 'package:mannager_business/domains/repositories/authen/i_authen_repository.dart';
import 'package:mannager_business/networks/data_respones/data_response.dart';
import 'package:mannager_business/networks/requets/data_requests/data_request.dart';
import 'package:mannager_business/networks/requets/request.dart';

class AuthenRepository extends IAuthenRepository {
  /* Example for a request */
  @override
  Future<DataResponse<Token>> login({
    required String userName,
    required String password,
  }) {
    return excuter(
      networkRequest: NetworkRequest(
          endPoint: "This is enpoint",
          method: RequesMethod.POST,
          body: DataRequest.json({
            "UserName": userName,
            "Password": password,
          })),
      parser: (data) => Token.fromJson(data),
    );
  }
}
