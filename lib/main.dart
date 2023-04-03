import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/app.dart';
import 'app/app_observers.dart';
import 'core/utils/logger/logger.dart';
import 'core/widgets/restart_app.dart';
import 'injection_container/injection_container.dart';

void main() {
  Logger.loggingLevel = LoggingLevel.verbose;

  WidgetsFlutterBinding.ensureInitialized();

  runZonedGuarded(
    () async {
      await EasyLocalization.ensureInitialized();

      await init(); // init the app dependency.

      FlutterError.onError = (details) {
        Logger.f(details.context.toString(), details.exception, details.stack);
      };

      PlatformDispatcher.instance.onError = (error, stackTrace) {
        Logger.f('Fatal async error ', error, stackTrace);

        return true;
      };

      Bloc.observer = AppBlocObserver();

      runApp(
        EasyLocalization(
          supportedLocales: const [Locale('en'), Locale('ar')],
          path: 'assets/translations',
          fallbackLocale: const Locale('en'),
          child: RestartApp(child: App()),
        ),
      );
    },
    (error, stackTrace) {
      Logger.f(
        'Fatal error caught in the root guarded zone',
        error,
        stackTrace,
      );
    },
  );
}
