part of 'products_bloc.dart';

@freezed
class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.productsLoaded([String? keyword]) =
      _ProductsLoaded;
}
