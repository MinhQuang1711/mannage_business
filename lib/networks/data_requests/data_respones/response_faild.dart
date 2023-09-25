import '../../data_respones/data_response.dart';

class ResponFaild extends DataResponse<String> {
  final String error;
  ResponFaild(this.error) : super(errorMessage: error);
  String? getError() => error;
}
