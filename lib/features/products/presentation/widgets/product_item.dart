import 'package:flutter/material.dart';
import 'package:qit_flutter/config/routes/app_router.dart';

import '../../../../config/routes/routes.dart';
import '../../models/product/product.dart' hide Image;

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ClipRRect(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(18),
      child: Material(
        type: MaterialType.card,
        borderOnForeground: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: BorderSide(
            width: 0.5,
            color: theme.colorScheme.primary,
          ),
        ),
        child: InkWell(
          onTap: () {
            AppRouter.router.navigateTo(
              context,
              Routes.product,
              routeSettings: RouteSettings(arguments: product),
            );
          },
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Image.network(
                  product.image.imageConversions.mediumRes,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  product.title,
                  style: theme.textTheme.subtitle2,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
