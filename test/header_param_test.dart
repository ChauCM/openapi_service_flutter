import 'dart:io';

import 'package:openapi_service_flutter/openapi_service_flutter.dart';
import 'package:test/test.dart';

/// Regression tests for header parameter wiring.
///
/// Header parameters (`in: header`) were accepted in generated method
/// signatures but never sent to Dio — `_generateHttpCall` only handled query
/// params and the request body — so they were silently dropped. These tests
/// pin that header params are collected into a `headers` map and attached to
/// the request via `Options(headers: ...)`.
void main() {
  group('Header parameter wiring', () {
    late String serviceOutput;

    setUpAll(() async {
      final yaml = await File('test/fixtures/header_param_api.openapi.yaml')
          .readAsString();
      final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yaml);
      final generator = OpenApiLibraryGenerator(
        api,
        baseName: 'HeaderParamApi',
        partFileName: 'header_param_api.openapi.dtos.g.dart',
      );
      serviceOutput = OpenApiServiceBuilderUtils.formatLibrary(
        generator.generateServiceLibrary('header_param_api'),
      );
    });

    test('declares a headers map for operations with header params', () {
      expect(serviceOutput, contains('final headers = <String, dynamic>{};'));
    });

    test('required header param is added unconditionally', () {
      expect(
        serviceOutput,
        contains("headers['X-Request-Id'] = xRequestId;"),
      );
    });

    test('optional header param is null-guarded', () {
      expect(
        serviceOutput,
        contains("if (xTrace != null) headers['X-Trace'] = xTrace;"),
      );
    });

    test('enum header param serializes via .name', () {
      expect(serviceOutput, contains("headers['X-Mode'] = xMode.name;"));
    });

    test('headers are attached to the request via Options', () {
      expect(serviceOutput, contains('options: Options(headers: headers)'));
    });

    test('header params are wired on a request that also has a JSON body', () {
      expect(serviceOutput, contains("headers['X-Api-Key'] = xApiKey;"));
    });

    test('binary upload folds content headers into the same headers map', () {
      expect(serviceOutput, contains("headers['X-Checksum'] = xChecksum;"));
      expect(
        serviceOutput,
        contains("headers['Content-Length'] = length.toString();"),
      );
      expect(serviceOutput, contains("headers['Content-Type'] = mime;"));
    });

    test('headers are recorded on the RequestContext for error handling', () {
      expect(serviceOutput, contains('headers: headers'));
    });
  });
}
