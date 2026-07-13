import 'dart:io';

import 'package:openapi_service_flutter/openapi_service_flutter.dart';
import 'package:test/test.dart';

/// Regression tests for enum query/path parameter serialization.
///
/// Enum parameters must serialize to their wire value via the generated
/// `.name` extension (the `@JsonValue`), NOT the raw Dart enum `toString()`.
///
/// Without this, a param typed as `EnumParamApiGetJourneyPeopleFilterDto`
/// would be sent to Dio as the enum, whose `toString()` yields
/// `EnumParamApiGetJourneyPeopleFilterDto.everyone` instead of the wire value
/// `Everyone` — causing the backend to reject the request with a 400.
void main() {
  group('Enum parameter serialization', () {
    late String serviceOutput;

    setUpAll(() async {
      final yaml =
          await File('test/fixtures/enum_param_serialization_api.openapi.yaml')
              .readAsString();
      final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yaml);
      final generator = OpenApiLibraryGenerator(
        api,
        baseName: 'EnumParamApi',
        partFileName: 'enum_param_serialization_api.openapi.dtos.g.dart',
      );
      serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
        generator.generateServiceLibrary('enum_param_serialization_api'),
      );
    });

    test('optional enum query param serializes via .name', () {
      expect(
        serviceOutput,
        contains("if (filter != null) queryParams['filter'] = filter.name;"),
      );
      // Must NOT emit the raw enum (which would toString() to the Dart name).
      expect(
        serviceOutput,
        isNot(contains("queryParams['filter'] = filter;")),
      );
    });

    test('required enum query param serializes via .name', () {
      expect(
        serviceOutput,
        contains("queryParams['sort'] = sort.name;"),
      );
      expect(
        serviceOutput,
        isNot(contains("queryParams['sort'] = sort;")),
      );
    });

    test('enum array query param serializes each element via .name', () {
      expect(
        serviceOutput,
        contains(
            "if (tags != null) queryParams['tags'] = tags.map((e) => e.name).toList();"),
      );
      expect(
        serviceOutput,
        isNot(contains("queryParams['tags'] = tags;")),
      );
    });

    test('enum path param interpolates its wire value via .name', () {
      expect(
        serviceOutput,
        contains(r"final endpoint = '/status/${state.name}';"),
      );
      // Must NOT interpolate the raw enum (which would toString()).
      expect(
        serviceOutput,
        isNot(contains(r"final endpoint = '/status/$state';")),
      );
    });

    test('non-enum path param is interpolated unchanged', () {
      expect(
        serviceOutput,
        contains(r"final endpoint = '/journeys/$id/people';"),
      );
    });
  });
}
