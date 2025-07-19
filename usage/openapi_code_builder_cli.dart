import 'dart:io';

import 'package:logging_appenders/logging_appenders.dart';
import 'package:openapi_service_flutter/openapi_service_flutter.dart';
import 'package:path/path.dart' as path;
import 'package:recase/recase.dart';

Future<void> main(List<String> args) async {
  if (args.isEmpty) {
    print('Usage: ${Platform.executable} <file>');
    exit(1);
  }
  PrintAppender.setupLogging();
  final fileName = args[0];
  final file = File(fileName);
  final source = await file.readAsString();
  final api = OpenApiServiceBuilderUtils.loadApiFromYaml(source);
  final baseName = path.basenameWithoutExtension(fileName).pascalCase;

  final library = OpenApiLibraryGenerator(
    api,
    baseName: baseName,
    partFileName: '${path.basenameWithoutExtension(fileName)}.g.dart',
  ).generate();
  final libraryOutput = OpenApiServiceBuilderUtils.formatLibrary(
    library,
  );
  print(libraryOutput);
}
