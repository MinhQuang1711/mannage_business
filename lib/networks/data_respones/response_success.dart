import 'package:mannager_business/networks/data_respones/data_response.dart';

class ResponseSuccess<T> extends DataResponse<T> {
  final T? dataModel;
  ResponseSuccess(this.dataModel) : super(data: dataModel);
  T? getModel() => dataModel;
}
