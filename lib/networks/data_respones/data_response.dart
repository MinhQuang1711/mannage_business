abstract class DataResponse<T> {
  final T? data;
  final String? errorMessage;

  DataResponse({this.data, this.errorMessage});
}
