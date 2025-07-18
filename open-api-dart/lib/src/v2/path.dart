import 'package:open_api_dart/src/object.dart';
import 'package:open_api_dart/src/v2/operation.dart';
import 'package:open_api_dart/src/v2/parameter.dart';

/// Represents a path (also known as a route) in the OpenAPI specification.
class APIPath extends APIObject {
  APIPath();

  List<APIParameter?> parameters = [];
  Map<String, APIOperation?> operations = {};

  @override
  void decode(KeyedArchive object) {
    super.decode(object);

    for (final k in object.keys) {
      if (k == r"$ref") {
        // todo: reference
      } else if (k == "parameters") {
        parameters = object.decodeObjects(k, () => APIParameter())!;
      } else {
        operations[k] = object.decodeObject(k, () => APIOperation());
      }
    }
  }

  @override
  void encode(KeyedArchive object) {
    super.encode(object);

    object.encodeObjects("parameters", parameters);
    for (final entry in operations.entries) {
      object.encodeObject(entry.key, entry.value);
    }
  }
}
