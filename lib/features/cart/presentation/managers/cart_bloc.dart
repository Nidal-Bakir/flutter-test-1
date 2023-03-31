import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/errors.dart';
import '../../models/cart.dart';
import '../../repository/cart_repository.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final CartRepository _cartRepository;

  CartBloc(this._cartRepository) : super(const CartState.inProgress()) {
    on<CartEvent>((event, emit) async {
      await event.map(
        productAdded: (event) => _onProductAdded(event, emit),
        productRemoved: (event) => _onProductRemoved(event, emit),
        cartLoaded: (event) => _onCartLoaded(event, emit),
        cartSaved: (event) => _onCartSaved(event, emit),
      );
    });
  }

  Future<void> _onProductAdded(
    _ProductAdded event,
    Emitter<CartState> emit,
  ) async {
    emit(const CartState.inProgress());

    if (event.locally) {
      final cart = _cartRepository.setProductQuantityLocally(
        productId: event.productId,
        quantity: event.quantity,
      );
      emit(CartState.loadSuccess(cart));
      return;
    }

    final result = await _cartRepository.addProductToCart(
      productId: event.productId,
      quantity: event.quantity,
    );

    result.fold(
      (error) => emit(CartState.loadFailure(error)),
      (cart) => emit(CartState.loadSuccess(cart)),
    );
  }

  Future<void> _onProductRemoved(
    _ProductRemoved event,
    Emitter<CartState> emit,
  ) async {
    emit(const CartState.inProgress());

    if (event.locally) {
      final cart = _cartRepository.removeProductFromCartLocally(
        event.productId,
      );
      emit(CartState.loadSuccess(cart));
      return;
    }

    final result = await _cartRepository.removeProductFromCart(
      event.productId,
    );

    result.fold(
      (error) => emit(CartState.loadFailure(error)),
      (cart) => emit(CartState.loadSuccess(cart)),
    );
  }

  Future<void> _onCartLoaded(
    _CartLoaded event,
    Emitter<CartState> emit,
  ) async {
    emit(const CartState.inProgress());

    final result = await _cartRepository.getUserCart();

    result.fold(
      (error) => emit(CartState.loadFailure(error)),
      (cart) => emit(CartState.loadSuccess(cart)),
    );
  }

  Future<void> _onCartSaved(
    _CartSaved event,
    Emitter<CartState> emit,
  ) async {
    emit(const CartState.inProgress());

    final result = await _cartRepository.concurrentlySaveLocallyChangedCart();
    result.fold(
      (error) => emit(CartState.loadFailure(error)),
      (cart) => cart == null ? null : emit(CartState.loadSuccess(cart)),
    );
  }
}
