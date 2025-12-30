import 'package:test/test.dart';
import 'package:openapi_service_flutter/src/openapi_service_builder.dart';
import 'package:openapi_service_flutter/openapi_service_flutter.dart';
import 'test_utils.dart';

void main() {
  group('DTO Suffix Collision Tests', () {
    test('should handle schemas where Foo and FooDto both exist', () async {
      final yamlContent =
          await loadFixture('dto_suffix_collision.openapi.yaml');
      final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yamlContent);

      final generator = OpenApiLibraryGenerator(
        api,
        baseName: 'DtoSuffixCollisionTestApi',
        partFileName: 'test.dtos.g.dart',
      );

      // Generate DTOs
      final dtosLibrary = generator.generateDtosLibrary();
      final dtosContent = OpenApiServiceBuilderUtils.formatLibrary(dtosLibrary);

      // Generate service
      final serviceLibrary =
          generator.generateServiceLibrary('dto_suffix_collision_test');
      final serviceContent =
          OpenApiServiceBuilderUtils.formatLibrary(serviceLibrary);

      // Verify both classes are generated with correct names
      // When collision detected: Foo -> FooDto, FooDto -> FooDtoDto
      expect(
        dtosContent,
        contains('sealed class InfantWellnessActivityDto '),
        reason:
            'InfantWellnessActivity should get Dto suffix -> InfantWellnessActivityDto',
      );

      expect(
        dtosContent,
        contains('sealed class InfantWellnessActivityDtoDto '),
        reason:
            'InfantWellnessActivityDto should get extra Dto suffix -> InfantWellnessActivityDtoDto (collision handling)',
      );

      // Verify the simpler schema (InfantWellnessActivity -> InfantWellnessActivityDto) has the basic fields
      final simpleClassMatch = RegExp(
        r'sealed class InfantWellnessActivityDto\s+with\s+_\$InfantWellnessActivityDto\s*\{[^}]+factory InfantWellnessActivityDto\(\{([^}]+)\}\)',
        multiLine: true,
        dotAll: true,
      ).firstMatch(dtosContent);

      expect(simpleClassMatch, isNotNull,
          reason: 'InfantWellnessActivityDto class should be found');

      if (simpleClassMatch != null) {
        final simpleFields = simpleClassMatch.group(1)!;
        expect(simpleFields, contains('studentId'),
            reason: 'InfantWellnessActivityDto should have studentId field');
        expect(simpleFields, contains('activityType'),
            reason: 'InfantWellnessActivityDto should have activityType field');
        expect(simpleFields, contains('activityDate'),
            reason: 'InfantWellnessActivityDto should have activityDate field');
        expect(simpleFields, isNot(contains('feedType')),
            reason:
                'InfantWellnessActivityDto should NOT have feedType field (that\'s in the DtoDto version)');
        expect(simpleFields, isNot(contains('bottleSource')),
            reason:
                'InfantWellnessActivityDto should NOT have bottleSource field');
      }

      // Verify the detailed schema (InfantWellnessActivityDto -> InfantWellnessActivityDtoDto) has the extended fields
      final detailedClassMatch = RegExp(
        r'sealed class InfantWellnessActivityDtoDto\s+with\s+_\$InfantWellnessActivityDtoDto\s*\{[^}]+factory InfantWellnessActivityDtoDto\(\{([^}]+)\}\)',
        multiLine: true,
        dotAll: true,
      ).firstMatch(dtosContent);

      expect(detailedClassMatch, isNotNull,
          reason: 'InfantWellnessActivityDtoDto class should be found');

      if (detailedClassMatch != null) {
        final detailedFields = detailedClassMatch.group(1)!;
        expect(detailedFields, contains('studentId'),
            reason: 'InfantWellnessActivityDtoDto should have studentId field');
        expect(detailedFields, contains('activityType'),
            reason:
                'InfantWellnessActivityDtoDto should have activityType field');
        expect(detailedFields, contains('feedType'),
            reason:
                'InfantWellnessActivityDtoDto should have feedType field (not in base version)');
        expect(detailedFields, contains('bottleSource'),
            reason:
                'InfantWellnessActivityDtoDto should have bottleSource field');
        expect(detailedFields, contains('bottleVolume'),
            reason:
                'InfantWellnessActivityDtoDto should have bottleVolume field');
        expect(detailedFields, contains('activityDateBridge'),
            reason:
                'InfantWellnessActivityDtoDto should have activityDateBridge field');
        expect(detailedFields, contains('remarks'),
            reason: 'InfantWellnessActivityDtoDto should have remarks field');
      }

      // Verify service methods use the correct DTOs
      expect(
        serviceContent,
        contains('Future<Either<ApiError, InfantWellnessActivityDto>>'),
        reason: 'GET method should return InfantWellnessActivityDto',
      );

      expect(
        serviceContent,
        contains(
            'Future<Either<ApiError, InfantWellnessActivityDtoDto>> updateWellnessActivity'),
        reason:
            'PUT method should return InfantWellnessActivityDtoDto (double Dto due to collision)',
      );

      expect(
        serviceContent,
        contains('InfantWellnessActivityDtoDto body'),
        reason:
            'PUT method request body should use InfantWellnessActivityDtoDto',
      );
    });

    test('should not add Dto suffix when collision is detected', () async {
      final yamlContent =
          await loadFixture('dto_suffix_collision.openapi.yaml');
      final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yamlContent);

      final generator = OpenApiLibraryGenerator(
        api,
        baseName: 'DtoSuffixCollisionTestApi',
        partFileName: 'test.dtos.g.dart',
      );

      final dtosLibrary = generator.generateDtosLibrary();
      final dtosContent = OpenApiServiceBuilderUtils.formatLibrary(dtosLibrary);

      // Count occurrences of each class definition
      final simpleClassCount = 'sealed class InfantWellnessActivityDto '
          .allMatches(dtosContent)
          .length;
      final detailedClassCount = 'sealed class InfantWellnessActivityDtoDto '
          .allMatches(dtosContent)
          .length;

      expect(simpleClassCount, equals(1),
          reason: 'InfantWellnessActivityDto should be defined exactly once');
      expect(detailedClassCount, equals(1),
          reason:
              'InfantWellnessActivityDtoDto should be defined exactly once');

      // Verify no unexpected numbered duplicates
      expect(
        dtosContent,
        isNot(contains('InfantWellnessActivityDto2')),
        reason: 'Should not generate numbered duplicate classes',
      );

      // Verify we don't have the base name without Dto
      expect(
        dtosContent,
        isNot(contains('sealed class InfantWellnessActivity ')),
        reason:
            'Should not have InfantWellnessActivity without Dto suffix (all DTOs should have Dto)',
      );
    });

    test('should generate valid fromJson constructors for both classes',
        () async {
      final yamlContent =
          await loadFixture('dto_suffix_collision.openapi.yaml');
      final api = OpenApiServiceBuilderUtils.loadApiFromYaml(yamlContent);

      final generator = OpenApiLibraryGenerator(
        api,
        baseName: 'DtoSuffixCollisionTestApi',
        partFileName: 'test.dtos.g.dart',
      );

      final dtosLibrary = generator.generateDtosLibrary();
      final dtosContent = OpenApiServiceBuilderUtils.formatLibrary(dtosLibrary);

      // Check for fromJson constructors
      expect(
        dtosContent,
        contains(
            'factory InfantWellnessActivityDto.fromJson(Map<String, dynamic> json)'),
        reason:
            'InfantWellnessActivityDto should have a fromJson factory constructor',
      );

      expect(
        dtosContent,
        contains(
            'factory InfantWellnessActivityDtoDto.fromJson(Map<String, dynamic> json)'),
        reason:
            'InfantWellnessActivityDtoDto should have a fromJson factory constructor',
      );
    });
  });
}
