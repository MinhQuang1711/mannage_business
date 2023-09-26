
import 'package:mannager_business/networks/data_respones/data_response.dart';
import 'package:mannager_business/networks/dio/base_netwotk.dart';

import '../../models/products/product.dart';

abstract class IPoductRepository extends BaseNetwork {
  Future<DataResponse<List<Product>>> getProduct({String? name});
  Future<DataResponse> createProduct({required Product product});
}
