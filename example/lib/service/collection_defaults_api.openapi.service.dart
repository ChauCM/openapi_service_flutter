// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unused_element, unnecessary_import, unused_import, invalid_annotation_target, curly_braces_in_flow_control_structures, require_trailing_commas, prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'collection_defaults_api.openapi.dtos.dart';
import 'package:openapi_service_runtime/openapi_service_runtime.dart';

class CollectionDefaultsApiService {
  CollectionDefaultsApiService(
    this._dio, {
    ErrorHandler? errorHandler,
  }) : _errorHandler = errorHandler ?? const DefaultErrorHandler();

  final Dio _dio;

  late final ErrorHandler _errorHandler;

  /// get: /characters/{hanzi}
  Future<Either<ApiError, CharacterDto>> getCharacter(
      {required String hanzi}) async {
    final endpoint = '/characters/$hanzi';
    try {
      final response = await _dio.get(endpoint);
      final result = CharacterDto.fromJson(response.data);
      return Right(result);
    } catch (e, stackTrace) {
      final requestContext = RequestContext(
        method: 'GET',
        endpoint: endpoint,
      );
      return Left(_errorHandler.handleError(
        e,
        stackTrace,
        requestContext,
      ));
    }
  }
}

T _throwStateError<T>(String message) => throw StateError(message);
