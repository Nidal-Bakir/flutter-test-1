import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../core/models/product.dart' hide Image;
import '../widgets/line_with_text_on_row.dart';

class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            _ProductImageWithBackButtonAndMenu(
              product: product,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _ProductTitle(
                      title: product.title,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    _Price(
                      price: product.price,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    _Description(
                      productDescription: product.description,
                    )
                  ],
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('add_to_cart'.tr()),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ProductImageWithBackButtonAndMenu extends StatelessWidget {
  final Product product;

  const _ProductImageWithBackButtonAndMenu({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final height = mediaQuery.size.height * 0.45;
    return SliverAppBar(
      toolbarHeight: 45,
      expandedHeight: height - mediaQuery.viewPadding.top,
      automaticallyImplyLeading: false,
      leading: const _BackButton(),
      flexibleSpace: Image.network(
        product.image.imageConversions.largeRes,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          }
          return Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).colorScheme.secondary,
              value: loadingProgress.expectedTotalBytes != null
                  ? loadingProgress.cumulativeBytesLoaded /
                      loadingProgress.expectedTotalBytes!
                  : null,
            ),
          );
        },
        frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
          if (wasSynchronouslyLoaded) {
            return child;
          }
          return AnimatedOpacity(
            opacity: frame == null ? 0 : 1,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeOut,
            child: child,
          );
        },
        height: height,
        width: double.infinity,
        errorBuilder: (_, __, ___) => Container(
          height: height,
          width: double.infinity,
          color: Colors.grey[300],
          child: Center(
            child: Icon(
              Icons.image_not_supported_rounded,
              size: 30,
              color: Colors.grey[700],
            ),
          ),
        ),
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(start: 16, bottom: 6, top: 6),
      child: Material(
        type: MaterialType.button,
        borderRadius: BorderRadius.circular(5),
        color: Colors.white.withOpacity(0.7),
        child: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(Icons.arrow_back_rounded),
        ),
      ),
    );
  }
}

class _ProductTitle extends StatelessWidget {
  final String title;

  const _ProductTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline5,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class _Description extends StatelessWidget {
  final String productDescription;

  const _Description({Key? key, required this.productDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LineWithTextOnRow(
          text: 'description'.tr(),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 7),
          child: Text(
            productDescription,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      ],
    );
  }
}

class _Price extends StatelessWidget {
  final Price price;

  const _Price({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LineWithTextOnRow(
          text: 'price'.tr(),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(start: 7),
          child: Text(
            price.formatted,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ],
    );
  }
}
