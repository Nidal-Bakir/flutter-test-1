part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.productAdded({
    required int productId,
    required int quantity,
    @Default(false) bool locally,
  }) = _ProductAdded;

  const factory CartEvent.productRemoved(
    int productId, [
    @Default(false) bool locally,
  ]) = _ProductRemoved;

  const factory CartEvent.cartLoaded() = _CartLoaded;

  const factory CartEvent.cartSaved() = _CartSaved;
}
