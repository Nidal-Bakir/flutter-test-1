import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import '../managers/products_provider.dart';
import '../widgets/primary_color_background_for_scaffold.dart';
import '../widgets/products_view.dart';

class SearchProductsScreen extends StatelessWidget {
  const SearchProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        productsNotifierProvider
            .overrideWith(() => ProductsNotifier(GetIt.I.get())),
      ],
      child: const _SearchProductsScreen(),
    );
  }
}

class _SearchProductsScreen extends ConsumerStatefulWidget {
  const _SearchProductsScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<_SearchProductsScreen> createState() =>
      _SearchProductsScreenState();
}

class _SearchProductsScreenState extends ConsumerState<_SearchProductsScreen> {
  late final _searchTextFieldController = TextEditingController();

  @override
  void dispose() {
    _searchTextFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return PrimaryColorBackgroundForScaffold(
      scaffoldWidget: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: _CustomAppBar(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    size: 30,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(
                      end: 16,
                    ),
                    child: TextField(
                      onSubmitted: _onSearch,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.search,
                      controller: _searchTextFieldController,
                      cursorColor: theme.colorScheme.secondary,
                      decoration: InputDecoration(
                        hintStyle: theme.textTheme.subtitle1,
                        hintText: 'search_for_products'.tr(),
                        fillColor: theme.colorScheme.onPrimary,
                        suffixIcon: Material(
                          color: Colors.transparent,
                          child: IconButton(
                            onPressed: _clearSearch,
                            icon: const Icon(Icons.clear_rounded),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            right: 14.0,
            left: 14.0,
            top: 6.0,
          ),
          child: ProductsView(
            onLoadMore: _onLoadMore,
          ),
        ),
      ),
    );
  }

  void _clearSearch() {
    ref.read(productsNotifierProvider.notifier).getProducts(keyword: '');

    _searchTextFieldController.text = '';
  }

  void _onSearch(keyword) {
    ref.read(productsNotifierProvider.notifier).getProducts(keyword: keyword);
  }

  void _onLoadMore(ref) {
    ref
        .read(productsNotifierProvider.notifier)
        .getProducts(keyword: _searchTextFieldController.value.text);
  }
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;

  const _CustomAppBar({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: child);
  }

  @override
  Size get preferredSize => const Size(double.infinity, 56.0);
}
