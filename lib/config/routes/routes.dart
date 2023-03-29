import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:qit_flutter/core/utils/logger/logger.dart';

import './route_handler.dart';

class Routes {
  static String rootSplash = "/";
  static String login = "/login";
  static String register = "/register";
  static String products = '/products';

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      Logger.log(LoggingLevel.error, 'ROUTE WAS NOT FOUND !!!"');
      return;
    });

    router.define(rootSplash, handler: rootHandler);
    router.define(login, handler: loginHandler);
    router.define(register, handler: registerHandler);
  }
}
