import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mannager_business/domains/repositories/products/i_product_repository.dart';
import 'package:mannager_business/ui/sell/blocs/sell_event.dart';
import 'package:mannager_business/ui/sell/blocs/sell_state.dart';
import 'package:mannager_business/ultils/extensions/network.dart';

class SellBloc extends Bloc<SellEvent, SellState> {
  final IPoductRepository iProductRepo;
  SellBloc(this.iProductRepo) : super(const SellState.init()) {
    on<SellEvent>(_onEvent);
  }

  void _onEvent(SellEvent event, Emitter emitter) async {
    await event.map(
        getProduct: (event) async => await _onGetProduct(event, emitter));
  }

  Future _onGetProduct(GET_PRODUCT event, Emitter emitter) async {
    emitter(const SellState.loading());
    (await iProductRepo.getProduct(name: event.name)).on(
      success: (data) => emitter(SellState.getProductSuccess(data)),
      failure: (failure) => emitter(SellState.failure(message: failure)),
    );
  }
}
