// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'runnable_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RunnableStore on _RunnableStore, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError => (_$hasErrorComputed ??=
          Computed<bool>(() => super.hasError, name: '_RunnableStore.hasError'))
      .value;

  late final _$_isRunningAtom =
      Atom(name: '_RunnableStore._isRunning', context: context);

  bool get isRunning {
    _$_isRunningAtom.reportRead();
    return super._isRunning;
  }

  @override
  bool get _isRunning => isRunning;

  @override
  set _isRunning(bool value) {
    _$_isRunningAtom.reportWrite(value, super._isRunning, () {
      super._isRunning = value;
    });
  }

  late final _$_errorAtom =
      Atom(name: '_RunnableStore._error', context: context);

  Object? get error {
    _$_errorAtom.reportRead();
    return super._error;
  }

  @override
  Object? get _error => error;

  @override
  set _error(Object? value) {
    _$_errorAtom.reportWrite(value, super._error, () {
      super._error = value;
    });
  }

  late final _$runAsyncAction =
      AsyncAction('_RunnableStore.run', context: context);

  @override
  Future<void> run(Runnable runnable, {OnError? onError}) {
    return _$runAsyncAction.run(() => super.run(runnable, onError: onError));
  }

  @override
  String toString() {
    return '''
hasError: ${hasError}
    ''';
  }
}
