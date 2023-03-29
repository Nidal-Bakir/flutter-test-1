import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:qit_flutter/core/auth/presentation/screens/login_screen.dart';
import 'package:qit_flutter/core/auth/presentation/screens/register_screen.dart';

import '../../features/splash/presentation/screens/splash_screen.dart';

final rootHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const SplashScreen();
});

final loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const LogInScreen();
});

final registerHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const RegisterScreen();
});
