import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qit_flutter/features/products/presentation/managers/products_provider.dart';
import 'package:qit_flutter/features/products/presentation/widgets/product_item.dart';

import '../../../../core/widgets/loading_indicator.dart';
import '../../../../core/widgets/no_internet_connection.dart';

class ProductsView extends ConsumerStatefulWidget {
  final void Function(WidgetRef ref) onLoadMore;

  const ProductsView({Key? key, required this.onLoadMore}) : super(key: key);

  @override
  ConsumerState<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends ConsumerState<ProductsView> {
  bool _canLoadMore = true;

  @override
  Widget build(BuildContext context) {
    ref.listen(productsNotifierProvider, (previous, next) {
      next.whenData((productsStateResult) =>
          _canLoadMore = productsStateResult.canLoadMore);
    });

    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification.metrics.pixels >=
            notification.metrics.maxScrollExtent * 0.8) {
          if (_canLoadMore) {
            widget.onLoadMore(ref);
          }
        }
        return true;
      },
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(),
          const _ProductsGrid(),
          _SliverFillRemaining(
            onRetry: widget.onLoadMore,
          )
        ],
      ),
    );
  }
}

class _ProductsGrid extends ConsumerWidget {
  const _ProductsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(
      productsNotifierProvider.select((data) => data.valueOrNull?.products),
    );

    if (products == null) {
      return const SliverToBoxAdapter();
    }
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ProductItem(
          product: products[index],
          key: ValueKey(products[index].productId),
        ),
        childCount: products.length,
      ),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200.0,
        childAspectRatio: 0.65,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
    );
  }
}

class _SliverFillRemaining extends ConsumerStatefulWidget {
  final void Function(WidgetRef ref) onRetry;

  const _SliverFillRemaining({Key? key, required this.onRetry})
      : super(key: key);

  @override
  ConsumerState<_SliverFillRemaining> createState() =>
      _SliverFillRemainingState();
}

class _SliverFillRemainingState extends ConsumerState<_SliverFillRemaining> {
  int productsCount = 0;

  _SliverFillRemainingState();

  @override
  Widget build(BuildContext context) {
    final productsState = ref.watch(productsNotifierProvider);

    return SliverFillRemaining(
      fillOverscroll: false,
      hasScrollBody: false,
      child: productsState.when(
        data: (data) {
          productsCount = data.products.length;
          return const SizedBox.shrink();
        },
        error: (error, _) {
          if (productsCount == 0) {
            return NoInternetConnection(
              onRetry: () => widget.onRetry(ref),
              fullScreen: true,
            );
          } else {
            return NoInternetConnection(
              onRetry: () => widget.onRetry(ref),
            );
          }
        },
        loading: () => const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Center(
            child: LoadingIndicator(),
          ),
        ),
      ),
    );
  }
}
