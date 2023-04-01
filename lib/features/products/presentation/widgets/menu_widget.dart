import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qit_flutter/core/auth/presentation/managers/auth_bloc.dart';
import 'package:qit_flutter/features/products/presentation/widgets/line_with_text_on_row.dart';

import '../../../../config/routes/app_router.dart';
import '../../../../config/routes/routes.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final user = context.read<AuthBloc>().getCurrentUser();

    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipOval(
                  child: Image.asset(
                    'assets/images/blank-profile-picture.png',
                    height: 60,
                    width: 60,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                if (user == null)
                  Text(
                    'guest'.tr(),
                    style: textTheme.headline6,
                  ),
                if (user != null)
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.name,
                        style: textTheme.headline6,
                      ),
                      Text(
                        user.email,
                        style: textTheme.subtitle1,
                      )
                    ],
                  ),
                Flexible(
                  flex: 1,
                  child: Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: IconButton(
                      icon: Icon(user == null ? Icons.login : Icons.logout),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        overlayColor: MaterialStateProperty.all(
                            Colors.white.withOpacity(0.3)),
                      ),
                      onPressed: () {
                        if (user == null) {
                          AppRouter.router.navigateTo(
                            context,
                            Routes.login,
                          );
                        } else {
                          AppRouter.router.navigateTo(
                            context,
                            Routes.logoutDialog,
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),
            LineWithTextOnRow(text: 'language'.tr()),
            const _Lang(),
            const SizedBox(height: 60),
          ],
        ),
      ),
    ));
  }
}

class _Lang extends StatelessWidget {
  const _Lang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 8),
      child: DropdownButton<Locale>(
        value: context.locale,
        items: [
          DropdownMenuItem<Locale>(
            value: const Locale('en'),
            child: Text('english'.tr()),
          ),
          DropdownMenuItem<Locale>(
            value: const Locale('ar'),
            child: Text('arabic'.tr()),
          )
        ],
        onChanged: (local) {
          context.setLocale(local!);
        },
      ),
    );
  }
}
