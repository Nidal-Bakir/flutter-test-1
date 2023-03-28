import 'package:easy_localization/easy_localization.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:qit_flutter/config/routes/app_router.dart';

import '../config/routes/routes.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key) {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    AppRouter.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QIT',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      onGenerateRoute: AppRouter.router.generator,
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
    );
  }
}
