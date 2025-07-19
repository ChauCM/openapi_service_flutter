import 'package:build/build.dart';
import 'package:openapi_service_flutter/src/openapi_service_builder.dart';
export 'package:openapi_service_flutter/src/openapi_service_builder.dart'
    show
        OpenApiLibraryGenerator,
        OpenApiServiceBuilderUtils,
        OpenApiServiceBuilder;

Builder openApiServiceBuilder(BuilderOptions options) {
  return OpenApiServiceBuilder(
    prefixFilter: options.config['prefixFilter'] as String? ?? '',
    includeFilterPrefix: options.config['includeFilterPrefix'] as bool? ?? true,
  );
}
