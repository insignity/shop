// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CatalogStore on _CatalogStore, Store {
  late final _$_catalogAtom =
      Atom(name: '_CatalogStore._catalog', context: context);

  Map<String, List<Product>> get catalog {
    _$_catalogAtom.reportRead();
    return super._catalog;
  }

  @override
  Map<String, List<Product>> get _catalog => catalog;

  @override
  set _catalog(Map<String, List<Product>> value) {
    _$_catalogAtom.reportWrite(value, super._catalog, () {
      super._catalog = value;
    });
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
