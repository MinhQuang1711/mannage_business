import 'package:mannager_business/networks/data_respones/data_response.dart';
import 'package:mannager_business/networks/data_respones/response_faild.dart';
import 'package:mannager_business/networks/data_respones/response_success.dart';

typedef Success<T> = Function(T);
typedef Failure<String> = Function(String);

extension NetworkExtension<T> on DataResponse<T> {
  bool get isSuccess => this is ResponseSuccess<T>;
  dynamic on({
    required Success success,
    required Failure failure,
  }) {
    if (isSuccess) {
      return success.call(ResponseSuccess(data).getModel());
    }
    return failure
        .call(ResponseFaild(errorMessage ?? "Lỗi không xác định").getError());
  }
}
