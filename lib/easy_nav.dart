library easy_nav;

import 'package:easy_nav/src/dialog_manager.dart';
import 'package:easy_nav/src/nav_manager.dart';
import 'package:flutter/material.dart';

export 'src/dialog_manager.dart';
export 'src/nav_manager.dart';

class EasyNav {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static NavManager? _navManager;
  static DialogManager? _dialogManager;

  static NavManager get navManager {
    return _navManager ??= NavManager();
  }

  static DialogManager get dialogManager{
    return _dialogManager ??= DialogManager();
  }
}
