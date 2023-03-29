import 'dart:async';

import './errors.dart';

/// Responsible of adding/broadcasting a security related errors
/// Like Unauthenticated error
class SecurityErrorFlow {
  SecurityErrorFlow._();

  static final _internal = SecurityErrorFlow._();

  factory SecurityErrorFlow() {
    return _internal;
  }

  final _securityExceptionFlowStreamController =
      StreamController<BaseError>.broadcast();

  Stream<BaseError> securityErrorFlowStream() {
    return _securityExceptionFlowStreamController.stream;
  }

  void riseSecurityError(BaseError securityError) {
    _securityExceptionFlowStreamController.sink.add(securityError);
  }
}
