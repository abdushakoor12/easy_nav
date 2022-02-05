import 'package:easy_nav/easy_nav.dart';
import 'package:flutter/material.dart';

class SnackBarManager {
  final BuildContext? _context = EasyNav.navigatorKey.currentContext;

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showEasySnackbar(
      SnackBar snackBar) {
    return ScaffoldMessenger.of(_context!).showSnackBar(snackBar);
  }

  /// with animation, see [removeCurrentSnackBar] for without animation
  void hideCurrentSnackBar() {
    return ScaffoldMessenger.of(_context!).hideCurrentSnackBar();
  }

  /// without animation, see [hideCurrentSnackBar] for with animation
  void removeCurrentSnackBar() {
    return ScaffoldMessenger.of(_context!).removeCurrentSnackBar();
  }

  void clearAllSnacks() {
    return ScaffoldMessenger.of(_context!).clearSnackBars();
  }
}
