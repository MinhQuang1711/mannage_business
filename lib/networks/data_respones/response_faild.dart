import 'package:mannager_business/networks/data_respones/data_response.dart';

class ResponseFaild<T> extends DataResponse<T> {
  final String error;
  ResponseFaild(this.error) : super(errorMessage: error);
  String? getError() => error;
}
