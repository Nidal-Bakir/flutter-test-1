import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/utils/logger/logger.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    final logMessage = 'bloc created: $bloc';

    Logger.i(logMessage);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    final logMessage =
        'bloc: $bloc  \n Event: ${transition.event}  \n current state: ${transition.currentState}  \n nextState: ${transition.nextState}';

    Logger.i(logMessage);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    final logMessage = 'bloc error in: $bloc';

    Logger.f(logMessage, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    final logMessage = 'bloc closed: $bloc';

    Logger.i(logMessage);
  }
}
