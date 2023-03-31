part of 'products_bloc.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.inProgress() = _InProgress;

  const factory ProductsState.loadSuccess(
    UnmodifiableListView<Product> products,
    bool canLoadMore,
  ) = _LoadSuccess;

  const factory ProductsState.loadFailure(BaseError error) = _LoadFailure;
}
