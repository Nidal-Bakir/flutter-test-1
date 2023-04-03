import 'dart:collection';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../../../core/error/errors.dart';
import '../../models/product/product.dart';
import '../../repository/product_repository.dart';

part 'products_bloc.freezed.dart';
part 'products_event.dart';
part 'products_state.dart';

const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final ProductsRepository _productRepository;

  ProductsBloc(this._productRepository)
      : super(const ProductsState.inProgress()) {
    on<ProductsEvent>(
      (event, emit) async {
        await event.map(
          productsLoaded: (event) => _onProductsLoaded(event, emit),
        );
      },
      transformer: throttleDroppable(throttleDuration),
    );
  }

  Future<void> _onProductsLoaded(
    _ProductsLoaded event,
    Emitter<ProductsState> emit,
  ) async {
    emit(const ProductsState.inProgress());

    final result = await _productRepository.getProducts(keyword: event.keyword);
    result.fold(
      (error) => emit(ProductsState.loadFailure(error)),
      (products) => emit(
        ProductsState.loadSuccess(
          products,
          _productRepository.canLoadMore(),
        ),
      ),
    );
  }
}
