import 'package:code_builder/code_builder.dart';

class CustomAllocator implements Allocator {
  static const _doNotPrefix = [
    'dart:core',
    'package:json_annotation/json_annotation.dart',
    'package:freezed_annotation/freezed_annotation.dart',
    'package:dio/dio.dart',
    'package:either_dart/either.dart',
  ];

  final _imports = <String, int>{};
  var _keys = 1;

  @override
  String allocate(Reference reference) {
    final symbol = reference.symbol;
    final url = reference.url;
    if (symbol == null) {
      throw ArgumentError.notNull('reference.symbol');
    }
    if (url == null || _doNotPrefix.contains(url)) {
      return symbol;
    }
    return '_i${_imports.putIfAbsent(url, _nextKey)}.$symbol';
  }

  int _nextKey() => _keys++;

  @override
  Iterable<Directive> get imports {
    return _imports.keys
        .map(
          (u) => Directive.import(u, as: '_i${_imports[u]}'),
        )
        .followedBy(_doNotPrefix
            .where((element) => element.startsWith('package:'))
            .map((e) => Directive.import(e)));
  }
}
