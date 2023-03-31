part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.inProgress() = _InProgress;

  const factory CartState.loadSuccess(Cart cart) = _LoadSuccess;

  const factory CartState.loadFailure(BaseError error) = _LoadFailure;
}
