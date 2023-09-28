import 'package:mannager_business/domains/repositories/products/i_product_repository.dart';
import 'package:mannager_business/networks/data_respones/data_response.dart';
import 'package:mannager_business/networks/requets/data_requests/data_request.dart';
import 'package:mannager_business/networks/requets/request.dart';

import '../../models/products/product.dart';

class ProductRepository extends IPoductRepository {
  @override
  Future<DataResponse> createProduct({required Product product}) {
    return excuter(
      networkRequest: NetworkRequest(
          endPoint: "This is end point of create product",
          method: RequesMethod.POST,
          body: DataRequest.json(product.toJson())),
      parser: (parser) {},
    );
  }

  @override
  Future<DataResponse<List<Product>>> getProduct({String? name}) {
    return excuter(
      networkRequest: NetworkRequest(
          endPoint: "Products/get-all",
          method: RequesMethod.POST,
          body: DataRequest.json({"Name": name})),
      parser: (data) => (data as List).map((e) => Product.fromJson(e)).toList(),
    );
  }
}
