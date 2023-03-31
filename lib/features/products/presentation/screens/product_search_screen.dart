import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:qit_flutter/features/products/presentation/widgets/products_view.dart';

import '../managers/products_bloc.dart';
import '../widgets/primary_color_background_for_scaffold.dart';

class ProductsSearchScreen extends StatefulWidget {
  const ProductsSearchScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductsSearchScreen> createState() => _ProductsSearchScreenState();
}

class _ProductsSearchScreenState extends State<ProductsSearchScreen> {
  late final _searchTextFieldController = TextEditingController();

  @override
  void dispose() {
    _searchTextFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider<ProductsBloc>(
      create: (context) => GetIt.I.get<ProductsBloc>()
        ..add(const ProductsEvent.productsLoaded('')),
      child: Builder(builder: (context) {
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
                          onSubmitted: (value) {
                            context.read<ProductsBloc>().add(
                                  ProductsEvent.productsLoaded(
                                    _searchTextFieldController.value.text,
                                  ),
                                );
                          },
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
                                onPressed: () {
                                  context.read<ProductsBloc>().add(
                                        const ProductsEvent.productsLoaded(''),
                                      );
                                  _searchTextFieldController.text = '';
                                },
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
                onLoadMore: (context) {
                  context.read<ProductsBloc>().add(
                        ProductsEvent.productsLoaded(
                          _searchTextFieldController.value.text,
                        ),
                      );
                },
              ),
            ),
          ),
        );
      }),
    );
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
