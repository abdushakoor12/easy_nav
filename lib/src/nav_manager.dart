import 'package:easy_nav/easy_nav.dart';
import 'package:flutter/material.dart';

class NavManager {
  final NavigatorState? _navState = EasyNav.navigatorKey.currentState;

  Future<T?> goTo<T extends Object?>(
    Widget screen, {
    bool fullScreenDialog = false,
  }) {
    return _navState!.push(MaterialPageRoute(
        builder: (context) => screen, fullscreenDialog: fullScreenDialog));
  }

  Future<T?> goToNamed<T extends Object?>(String routeName) {
    return _navState!.pushNamed(routeName);
  }

  Future<T?> replace<T extends Object?>(
    Widget screen, {
    bool fullScreenDialog = false,
  }) {
    return _navState!.pushReplacement(MaterialPageRoute(
        builder: (context) => screen, fullscreenDialog: fullScreenDialog));
  }

  Future<T?> replaceNamed<T extends Object?>(String routeName) {
    return _navState!.pushReplacementNamed(routeName);
  }

  void goBack<T extends Object?>([T? result]) {
    return _navState!.pop(result);
  }

  Future<T?> goToAndRemoveUntil<T extends Object?>(
      Widget screen, RoutePredicate predicate) {
    return _navState!.pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => screen), (route) => false);
  }

  Future<T?> goToNamedAndRemoveUntil<T extends Object?>(
      String routeName, RoutePredicate predicate) {
    return _navState!.pushNamedAndRemoveUntil(routeName, (route) => false);
  }
}
