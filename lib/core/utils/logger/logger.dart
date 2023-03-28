// ignore_for_file: avoid_print

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart' as flutter_foundation;
import 'package:stack_trace/stack_trace.dart';

import 'ansi_color.dart';

enum LoggingLevel {
  off,
  fatal,
  error,
  warning,
  info,
  debug,
  verbose,
}

final _levelColors = {
  LoggingLevel.verbose: AnsiColor.fg(AnsiColor.grey(0.5)),
  LoggingLevel.debug: AnsiColor.none(),
  LoggingLevel.info: AnsiColor.fg(12),
  LoggingLevel.warning: AnsiColor.fg(190),
  LoggingLevel.error: AnsiColor.fg(196),
  LoggingLevel.fatal: AnsiColor.fg(199),
};

final _levelPrefixes = {
  LoggingLevel.verbose: '[V]',
  LoggingLevel.debug: '[D]',
  LoggingLevel.info: '[I]',
  LoggingLevel.warning: '[W]',
  LoggingLevel.error: '[E]',
  LoggingLevel.fatal: '[F]',
};

class LogEvent extends Equatable {
  final LoggingLevel level;
  final String message;
  final Object? error;
  final StackTrace? stackTrace;
  final String? tag;

  late final String? stringFormattedStackTrace;

  LogEvent(
    this.level,
    this.message,
    this.error,
    this.stackTrace,
    this.tag,
  ) {
    if (stackTrace != null) {
      stringFormattedStackTrace = Trace.format(stackTrace!, terse: true);
    }
  }

  String toStringFormatted({required bool withColors}) {
    final levelPrefix = _levelPrefixes[level]!;

    var messageLog = '[log] $levelPrefix ';

    if (tag != null) {
      messageLog += '($tag) ';
    }

    messageLog += message;

    if (error != null) {
      messageLog += '\nError:\n${error.toString()}';
    }

    if (stackTrace != null) {
      messageLog += '\nStackTrace:\n$stringFormattedStackTrace}';
    }

    final color = _levelColors[level]!;

    return withColors ? color(messageLog) : messageLog;
  }

  @override
  List<Object?> get props => [level, tag, message, error, stackTrace];
}

class Logger {
  /// The current logging level of the app. verbose as default.
  ///
  /// All logs with levels above this level will be omitted.
  ///
  /// Levels:
  ///
  /// * 0: off
  /// * 1: fatal
  /// * 2: error
  /// * 3: warning
  /// * 4: info
  /// * 5: debug
  /// * 6: verbose
  static LoggingLevel loggingLevel = LoggingLevel.verbose;

  Logger._();

  static void log(
    LoggingLevel level,
    String message, [
    Object? error,
    StackTrace? stackTrace,
    String? tag,
    bool shouldReportToCrashlytics = false,
  ]) {
    final logEvent = LogEvent(level, message, error, stackTrace, tag);

    // if (shouldReportToCrashlytics) {
    //   _reportToCrashlytics(logEvent);
    // }

    if (_shouldPrintLog(logEvent)) {
      print(logEvent.toStringFormatted(withColors: true));
    }
  }

  static bool _shouldPrintLog(LogEvent logEvent) {
    return flutter_foundation.kDebugMode &&
        logEvent.level.index <= Logger.loggingLevel.index;
  }

  // static Future<void> _reportToCrashlytics(LogEvent logEvent) {
  //   return CrashlyticsService.instance.recordError(
  //     logEvent.error,
  //     logEvent.stackTrace,
  //     fatal: logEvent.level == LoggingLevel.fatal,
  //     reason: logEvent.message,
  //     printDetails: _shouldPrintLog(logEvent),
  //     information: [
  //       'level: ${logEvent.level.name}',
  //       if (logEvent.tag != null) 'tag: ${logEvent.tag}',
  //     ],
  //   );
  // }

  /// Log a message at level [LoggingLevel.fatal].
  static void f(
    String message, [
    Object? error,
    StackTrace? stackTrace,
    String? tag,
    bool shouldReportToCrashlytics = false,
  ]) {
    log(
      LoggingLevel.error,
      message,
      error,
      stackTrace,
      tag,
      shouldReportToCrashlytics,
    );
  }

  /// Log a message at level [LoggingLevel.error].
  static void e(
    String message, [
    Object? error,
    StackTrace? stackTrace,
    String? tag,
    bool shouldReportToCrashlytics = false,
  ]) {
    log(
      LoggingLevel.error,
      message,
      error,
      stackTrace,
      tag,
      shouldReportToCrashlytics,
    );
  }

  /// Log a message at level [LoggingLevel.warning].
  static void w(
    String message, [
    Object? error,
    StackTrace? stackTrace,
    String? tag,
  ]) {
    log(LoggingLevel.warning, message, error, stackTrace, tag);
  }

  /// Log a message at level [LoggingLevel.info].
  static void i(
    String message, [
    Object? error,
    StackTrace? stackTrace,
    String? tag,
  ]) {
    log(LoggingLevel.info, message, error, stackTrace, tag);
  }

  /// Log a message at level [LoggingLevel.debug].
  static void d(
    String message, [
    Object? error,
    StackTrace? stackTrace,
    String? tag,
  ]) {
    log(LoggingLevel.debug, message, error, stackTrace, tag);
  }

  /// Log a message at level [LoggingLevel.verbose].
  static void v(
    String message, [
    Object? error,
    StackTrace? stackTrace,
    String? tag,
  ]) {
    log(LoggingLevel.verbose, message, error, stackTrace, tag);
  }
}
