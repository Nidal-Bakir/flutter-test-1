import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/utils/logger/logger.dart';

class AppRiverpodObserver extends ProviderObserver {
  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) {
    final logMessage = '''
    --- riverpod Log
    Provider Added: ${provider.name ?? provider.runtimeType} 
    value: $value
    ProviderContainer: $container
    --- riverpod Log''';

    Logger.i(logMessage);
  }

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    final logMessage = '''
    --- riverpod Log
    Provider Updated: ${provider.name ?? provider.runtimeType} 
    previousValue: $previousValue
    newValue: $newValue
    ProviderContainer: $container
    --- riverpod Log''';

    Logger.i(logMessage);
  }

  @override
  void didDisposeProvider(
      ProviderBase<Object?> provider, ProviderContainer container) {
    final logMessage = '''
    --- riverpod Log
    Provider Disposed: ${provider.name ?? provider.runtimeType} 
    ProviderContainer: $container
    --- riverpod Log''';

    Logger.i(logMessage);
  }

  @override
  void providerDidFail(
    ProviderBase<Object?> provider,
    Object error,
    StackTrace stackTrace,
    ProviderContainer container,
  ) {
    final logMessage = '''
    --- riverpod Log
    Provider Disposed: ${provider.name ?? provider.runtimeType} 
    ProviderContainer: $container
    --- riverpod Log''';

    Logger.w(logMessage);
  }
}
