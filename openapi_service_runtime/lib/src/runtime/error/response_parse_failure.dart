import 'package:dio/dio.dart';

/// Thrown by generated service code when the HTTP call succeeded but the body
/// could not be turned into the declared Dart type.
///
/// The generated parse runs in its own `try` so the [Response] survives the
/// failure. Without it a `fromJson` `TypeError` is indistinguishable from a
/// dead wire: the error names the type it wanted and never the field or the
/// payload that disagreed, and the one body that would have identified the
/// field is the body that gets discarded.
///
/// Dio throws on a non-success status before the parse runs, so reaching this
/// means the status was a success one — the client read a good answer wrong.
class ResponseParseFailure implements Exception {
  const ResponseParseFailure({
    required this.response,
    required this.cause,
    required this.causeStackTrace,
  });

  /// The response that arrived and could not be read.
  final Response<dynamic> response;

  /// The error the parse threw, typically a `TypeError` from `fromJson` or a
  /// cast.
  final Object cause;

  /// The stack trace of [cause]. This is the one that names the parse frame;
  /// the trace at the rethrow site does not.
  final StackTrace causeStackTrace;

  /// Status of the response that failed to parse.
  int? get statusCode => response.statusCode;

  /// Body of the response that failed to parse — the evidence the failure is
  /// otherwise unreadable without.
  dynamic get responseBody => response.data;

  @override
  String toString() =>
      'ResponseParseFailure(statusCode: ${response.statusCode}, cause: $cause)';
}
