import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qit_flutter/features/products/presentation/widgets/product_item.dart';

import '../../../../core/widgets/loading_indicator.dart';
import '../../../../core/widgets/no_internet_connection.dart';
import '../managers/products_bloc.dart';

class ProductsView extends StatefulWidget {
  final void Function(BuildContext context) onLoadMore;

  const ProductsView({Key? key, required this.onLoadMore}) : super(key: key);

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  bool _canLoadMore = true;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProductsBloc, ProductsState>(
      listener: (context, state) {
        state.whenOrNull(
          loadSuccess: (products, canLoadMore) {
            _canLoadMore = canLoadMore;
          },
        );
      },
      child: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification.metrics.pixels >=
              notification.metrics.maxScrollExtent * 0.8) {
            if (_canLoadMore) {
              widget.onLoadMore(context);
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
      ),
    );
  }
}

class _ProductsGrid extends StatelessWidget {
  const _ProductsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      buildWhen: _buildWhenLoadSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          loadSuccess: (products, canLoadMore) {
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
          },
          orElse: () => const SliverToBoxAdapter(),
        );
      },
    );
  }

  bool _buildWhenLoadSuccess(
    ProductsState previous,
    ProductsState current,
  ) {
    return current.map(
      inProgress: (_) => false,
      loadSuccess: (_) => true,
      loadFailure: (_) => false,
    );
  }
}

class _SliverFillRemaining extends StatefulWidget {
  final void Function(BuildContext context) onRetry;

  const _SliverFillRemaining({Key? key, required this.onRetry})
      : super(key: key);

  @override
  State<_SliverFillRemaining> createState() => _SliverFillRemainingState();
}

class _SliverFillRemainingState extends State<_SliverFillRemaining> {
  int productsCount = 0;

  _SliverFillRemainingState();

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      fillOverscroll: false,
      hasScrollBody: false,
      child: BlocBuilder<ProductsBloc, ProductsState>(
        builder: (context, state) {
          return state.when(
            loadSuccess: (products, __) {
              productsCount = products.length;
              return const SizedBox.shrink();
            },
            inProgress: () => const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Center(
                child: LoadingIndicator(),
              ),
            ),
            loadFailure: (error) {
              if (productsCount == 0) {
                return NoInternetConnection(
                  onRetry: () => widget.onRetry(context),
                  fullScreen: true,
                );
              } else {
                return NoInternetConnection(
                  onRetry: () => widget.onRetry(context),
                );
              }
            },
          );
        },
      ),
    );
  }
}
