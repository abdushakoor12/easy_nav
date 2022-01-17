import 'package:flutter/material.dart';

class NavManager {
  final NavigatorState? _navState;

  NavManager(this._navState);

  Future<T?> goTo<T extends Object?>(
    Widget screen, {
    bool fullScreenDialog = false,
  }) {
    return _navState!.push(MaterialPageRoute(
        builder: (context) => screen, fullscreenDialog: fullScreenDialog));
  }

  Future<T?> replace<T extends Object?>(
    Widget screen, {
    bool fullScreenDialog = false,
  }) {
    return _navState!.pushReplacement(MaterialPageRoute(
        builder: (context) => screen, fullscreenDialog: fullScreenDialog));
  }

  void goBack<T extends Object?>([T? result]) {
    return _navState!.pop(result);
  }

  Future<T?> goToAndRemoveUntil<T extends Object?>(Widget screen, RoutePredicate predicate){
    return _navState!.pushAndRemoveUntil(MaterialPageRoute(
        builder: (context) => screen), (route) => false);
  }
}
