import 'package:easy_nav/easy_nav.dart';
import 'package:flutter/material.dart';

class NavManager {
  final navState = EasyNav.navigatorKey.currentState;

  Future<T?> goto<T extends Object?>(
    Widget screen, {
    bool fullScreenDialog = false,
  }) {
    return navState!.push(MaterialPageRoute(
        builder: (context) => screen, fullscreenDialog: fullScreenDialog));
  }

  Future<T?> replace<T extends Object?>(
    Widget screen, {
    bool fullScreenDialog = false,
  }) {
    return navState!.pushReplacement(MaterialPageRoute(
        builder: (context) => screen, fullscreenDialog: fullScreenDialog));
  }

  void goBack<T extends Object?>([T? result]) {
    return navState!.pop(result);
  }
}
