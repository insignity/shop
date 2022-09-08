import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';

part 'runnable_store.g.dart';

typedef Runnable = FutureOr<void> Function();
typedef OnError = FutureOr<void> Function(Object error);

class RunnableStore = _RunnableStore with _$RunnableStore;

abstract class _RunnableStore with Store {
  @readonly
  bool _isRunning = false;

  @readonly
  Object? _error;

  @computed
  bool get hasError => _error != null;

  @action
  @protected
  Future<void> run(Runnable runnable, {OnError? onError}) async {
    try {
      _isRunning = true;
      _error = null;
      await runnable();
    } catch (e, s) {
      log("$e, $s");
      _error = e;
      if (onError != null) {
        await onError(e);
      }
    } finally {
      _isRunning = false;
    }
  }
}
