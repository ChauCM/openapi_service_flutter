/// Where a runtime log line goes.
///
/// Defaults to `print` everywhere in this package. A Flutter host passes
/// `debugPrint` (which throttles, and avoids iOS truncating a long line in the
/// system log); a server host passes its logger.
typedef ApiLogSink = void Function(String message);

/// The sink used when a host passes none: plain `print`.
// ignore: avoid_print
void defaultLogSink(String message) => print(message);

/// Whether asserts are on — true in a debug/JIT build, false in a release AOT
/// build.
///
/// This package is pure Dart (no Flutter), so `kDebugMode` is not available.
/// This is the pure-Dart equivalent, and it is what guards
/// [DefaultDio.createWithLogging] so that reading the name is enough to be safe.
bool get assertsEnabled {
  var enabled = false;
  assert(enabled = true); // only executes when asserts are enabled
  return enabled;
}
