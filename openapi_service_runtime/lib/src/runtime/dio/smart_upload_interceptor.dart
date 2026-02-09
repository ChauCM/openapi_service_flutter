import 'dart:async';
import 'package:dio/dio.dart';

/// Interceptor that automatically detects file upload operations and applies
/// intelligent timeout handling based on upload progress.
/// 
/// For regular requests: Uses the standard sendTimeout
/// For file uploads: Monitors progress and only times out if no progress 
/// is made within the specified uploadProgressTimeout duration
class SmartUploadInterceptor extends Interceptor {
  final Duration regularSendTimeout;
  final Duration uploadProgressTimeout;
  Timer? _progressTimer;
  DateTime? _lastProgressTime;
  
  SmartUploadInterceptor({
    required this.regularSendTimeout,
    this.uploadProgressTimeout = const Duration(seconds: 45),
  });
  
  /// Detects if a request is likely a file upload operation
  bool _isUploadRequest(RequestOptions options) {
    // Check if data is a Stream (from file.openRead())
    if (options.data is Stream) return true;
    
    // Check if data is FormData (multipart upload)
    if (options.data is FormData) return true;
    
    // Check if progress callback is provided (usually for uploads)
    if (options.onSendProgress != null) return true;
    
    // Check for non-JSON content types (likely binary data)
    final contentType = options.headers['Content-Type'];
    if (contentType != null && 
        contentType != 'application/json' && 
        contentType != 'text/plain') {
      return true;
    }
    
    return false;
  }
  
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_isUploadRequest(options)) {
      // For uploads: disable regular timeout or use a very long one
      if (options.onSendProgress != null) {
        // Has progress callback - use progress-based timeout
        options.sendTimeout = null; // Disable fixed timeout
        
        final originalProgress = options.onSendProgress!;
        
        // Initialize progress tracking
        _lastProgressTime = DateTime.now();
        _startProgressMonitor(options, handler);
        
        // Wrap progress callback to track last progress time
        options.onSendProgress = (sent, total) {
          _lastProgressTime = DateTime.now();
          originalProgress(sent, total);
          
          // If upload is complete, clean up
          if (sent == total) {
            _cleanupProgressMonitor();
          }
        };
      } else {
        // Upload without progress callback - use a generous timeout
        options.sendTimeout = const Duration(minutes: 10);
      }
    }
    // Regular requests keep their normal timeout
    
    handler.next(options);
  }
  
  void _startProgressMonitor(RequestOptions options, RequestInterceptorHandler handler) {
    _progressTimer?.cancel();
    
    // Check progress periodically
    _progressTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_lastProgressTime != null) {
        final timeSinceProgress = DateTime.now().difference(_lastProgressTime!);
        
        if (timeSinceProgress > uploadProgressTimeout) {
          // No progress for too long - timeout the request
          timer.cancel();
          
          // Create a timeout error
          final error = DioException(
            requestOptions: options,
            error: 'Upload stalled - no progress for ${uploadProgressTimeout.inSeconds} seconds',
            type: DioExceptionType.sendTimeout,
          );
          
          // Clean up before rejecting
          _cleanupProgressMonitor();
          
          // Reject the request
          handler.reject(error, true);
        }
      }
    });
  }
  
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _cleanupProgressMonitor();
    handler.next(response);
  }
  
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    _cleanupProgressMonitor();
    handler.next(err);
  }
  
  void _cleanupProgressMonitor() {
    _progressTimer?.cancel();
    _progressTimer = null;
    _lastProgressTime = null;
  }
}