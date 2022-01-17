import 'package:flutter/material.dart';

class BottomSheetManager {
  final BuildContext? _context;

  BottomSheetManager(this._context);

  Future<T?> showEasyModalBottomSheet<T>({
    required WidgetBuilder builder,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    Color? barrierColor,
    bool isScrollControlled = false,
    bool useRootNavigator = false,
    bool isDismissible = true,
    bool enableDrag = true,
    RouteSettings? routeSettings,
    AnimationController? transitionAnimationController,
  }) {
    return showModalBottomSheet(
      context: _context!,
      builder: builder,
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      constraints: constraints,
      barrierColor: barrierColor,
      isScrollControlled: isScrollControlled,
      useRootNavigator: useRootNavigator,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      routeSettings: routeSettings,
      transitionAnimationController: transitionAnimationController,
    );
  }

  PersistentBottomSheetController<T> showEasyBottomSheet<T>({
    required WidgetBuilder builder,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    AnimationController? transitionAnimationController,
  }) {
    return showBottomSheet(
        context: _context!,
        builder: builder,
        backgroundColor: backgroundColor,
        elevation: elevation,
        shape: shape,
        clipBehavior: clipBehavior,
        constraints: constraints,
        transitionAnimationController: transitionAnimationController);
  }
}
