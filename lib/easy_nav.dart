library easy_nav;

import 'package:flutter/material.dart';

export 'src/snackbar_manager.dart';
export 'src/dialog_manager.dart';
export 'src/nav_manager.dart';
export 'src/bottom_sheet_manager.dart';

class EasyNav {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
}
