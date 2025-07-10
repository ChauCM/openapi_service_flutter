import 'package:build/build.dart';
import 'package:openapi_service_flutter/src/openapi_service_builder.dart';
export 'package:openapi_service_flutter/src/openapi_service_builder.dart'
    show
        OpenApiLibraryGenerator,
        OpenApiServiceBuilderUtils,
        OpenApiServiceBuilder;

Builder openApiServiceBuilder(BuilderOptions options) {
  return OpenApiServiceBuilder(
    orderDirectives: true,
    generateProvider: options.config['generateProvider'] as bool? ?? false,
  );
}
