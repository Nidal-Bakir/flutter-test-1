abstract class BaseError implements Exception {}

abstract class UserError implements BaseError {
  final dynamic message;

  const UserError(this.message);

  @override
  String toString() {
    Object? message = this.message;
    if (message == null) return "$runtimeType";
    return "$runtimeType: $message";
  }
}

class ConnectionError extends UserError {
  const ConnectionError(super.message);
}

abstract class ServerBaseError implements BaseError {
  final int code;
  final String message;
  final Map<String, dynamic>? errors;

  ServerBaseError({
    int? code,
    required this.message,
    this.errors,
  }) : code = code ?? -1;

  @override
  String toString() {
    String exceptionString = ' \n';
    exceptionString += '---- $runtimeType';
    exceptionString += '\nCode: $code';
    exceptionString += '\nMessage: $message';
    exceptionString += '\nErrors: ${errors.toString()}';
    exceptionString += '----';
    return exceptionString;
  }

  factory ServerBaseError.factory(
      int? code, String message, Map<String, dynamic>? errors) {
    switch (code) {
      case 401:
        return UnauthenticatedServerError(
          code: code,
          message: message,
          errors: errors,
        );
      case 422:
        return UnauthenticatedServerError(
          code: code,
          message: message,
          errors: errors,
        );
      default:
        return ServerError(
          code: code,
          message: message,
          errors: errors,
        );
    }
  }

  factory ServerBaseError.fromJson(Map<String, dynamic> json, int? code) {
    return ServerBaseError.factory(code, json['message'], json['errors']);
  }
}

class ServerError extends ServerBaseError {
  ServerError({
    super.code,
    required super.message,
    super.errors,
  });
}

class UnauthenticatedServerError extends ServerBaseError {
  UnauthenticatedServerError({
    super.code,
    required super.message,
    super.errors,
  });
}

class UnprocessableContentServerError extends ServerBaseError {
  UnprocessableContentServerError({
    super.code,
    required super.message,
    super.errors,
  });
}
