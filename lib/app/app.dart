import 'package:easy_localization/easy_localization.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:qit_flutter/config/routes/app_router.dart';

import '../config/routes/routes.dart';
import '../config/theme/app_theme.dart';
import '../core/auth/presentation/managers/auth_bloc.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key) {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    AppRouter.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => GetIt.I.get<AuthBloc>()
        ..add(
          const AuthEvent.currentUserLoaded(),
        ),
      child: MaterialApp(
        title: 'QIT',
        debugShowCheckedModeBanner: false,
        theme: defaultLightTheme(context.locale.languageCode),
        onGenerateRoute: AppRouter.router.generator,
        locale: context.locale,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
      ),
    );
  }
}
