import 'package:freezed_annotation/freezed_annotation.dart';

part 'sell_event.freezed.dart';

@freezed
class SellEvent with _$SellEvent {
  const factory SellEvent.getProduct({String? name}) = GET_PRODUCT;
}
