import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mannager_business/ui/products/blocs/product_event.dart';
import 'package:mannager_business/ui/products/blocs/product_state.dart';
import 'package:mannager_business/ultils/extensions/network.dart';

import '../../../domains/repositories/products/i_product_repository.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final IPoductRepository iRepo;
  ProductBloc(this.iRepo) : super(const ProductState.init()) {
    on<ProductEvent>(_onEvent);
  }

  Future _onEvent(ProductEvent event, Emitter emitter) async {
    event.map(
      getProduct: (event) async => await _onGetProduct(event, emitter),
      createProduct: (event) async => await _onCreateProduct(event, emitter),
      addMoreIngredient: (event) => _addMoreIngredient(event, emitter),
    );
  }

  Future _onGetProduct(GET_PRODUCT event, Emitter emitter) async {
    emitter(const ProductState.loading());
    (await iRepo.getProduct(name: event.name)).on(
      success: (data) => emitter(ProductState.getProductSuccess(data)),
      failure: (failure) => emitter(ProductState.failure(message: failure)),
    );
  }

  Future _onCreateProduct(CREATE_PRODUCT event, Emitter emitter) async {
    emitter(const ProductState.loading());
    (await iRepo.createProduct(product: event.product)).on(
      success: (success) =>
          emitter(const ProductState.createSuccess("Thêm mới thành công")),
      failure: (failure) => emitter(ProductState.failure(message: failure)),
    );
  }

  void _addMoreIngredient(ADD_MORE_INGREDIENT event, Emitter emitter) {
    emitter(const ProductState.loading());
    emitter(ProductState.addIngredientSuccess(event.value));
  }
}
