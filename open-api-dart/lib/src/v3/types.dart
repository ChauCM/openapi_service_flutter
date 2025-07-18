enum APIType { string, number, integer, boolean, array, object }

extension APITypeExtension on APIType {
  String get name {
    switch (this) {
      case APIType.string:
        return 'string';
      case APIType.number:
        return 'number';
      case APIType.integer:
        return 'integer';
      case APIType.boolean:
        return 'boolean';
      case APIType.array:
        return 'array';
      case APIType.object:
        return 'object';
    }
  }
}

class APITypeCodec {
  static dynamic decode(dynamic type) {
    if (type is String?) {
      return _decodeSingle(type);
    } else if (type is List) {
      // For OpenAPI 3.1.1 array type syntax
      return type.map((t) => _decodeSingle(t as String?)).toList();
    }
    return null;
  }

  static APIType? _decodeSingle(String? type) {
    switch (type) {
      case "string":
        return APIType.string;
      case "number":
        return APIType.number;
      case "integer":
        return APIType.integer;
      case "boolean":
        return APIType.boolean;
      case "array":
        return APIType.array;
      case "object":
        return APIType.object;
      case "null":
        // OpenAPI 3.1.1 supports "null" as a type
        return null;
      default:
        return null;
    }
  }

  static dynamic encode(dynamic type) {
    if (type is APIType?) {
      return _encodeSingle(type);
    } else if (type is List) {
      // Encode array of types back to array format
      return type.map((t) => _encodeSingle(t as APIType?)).toList();
    }
    return null;
  }

  static String? _encodeSingle(APIType? type) {
    switch (type) {
      case APIType.string:
        return "string";
      case APIType.number:
        return "number";
      case APIType.integer:
        return "integer";
      case APIType.boolean:
        return "boolean";
      case APIType.array:
        return "array";
      case APIType.object:
        return "object";
      case null:
        return "null";
      default:
        return null;
    }
  }
}
