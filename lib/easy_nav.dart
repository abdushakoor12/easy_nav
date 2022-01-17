library easy_nav;

import 'package:easy_nav/src/bottom_sheet_manager.dart';
import 'package:easy_nav/src/dialog_manager.dart';
import 'package:easy_nav/src/nav_manager.dart';
import 'package:flutter/material.dart';

export 'src/dialog_manager.dart';
export 'src/nav_manager.dart';
export 'src/bottom_sheet_manager.dart';

class EasyNav {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static NavManager? _navManager;
  static DialogManager? _dialogManager;
  static BottomSheetManager? _bottomsheetManager;

  static NavManager get navManager {
    return _navManager ??= NavManager(navigatorKey.currentState);
  }

  static DialogManager get dialogManager {
    return _dialogManager ??= DialogManager(navigatorKey.currentContext);
  }

  static BottomSheetManager get bottomSheetManager {
    return _bottomsheetManager ??=
        BottomSheetManager(navigatorKey.currentContext);
  }
}
