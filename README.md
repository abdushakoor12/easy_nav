## EasyNav

| easy_nav         | [![pub package](https://img.shields.io/pub/v/riverpod.svg?label=riverpod&color=blue)](https://pub.dartlang.org/packages/easy_nav)                 |

Just a simple wrapper around flutter navigator, dialogs and snackbar to do those things without context.

Don't forget to do add the navigator key:

```dart
 @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      
      ...
      navigatorKey: EasyNav.navigatorKey,
      ...
    );
  }
```

### Navigation

Initialize NavManager in your viewmodel or pass it via constructor.

```dart
class HomeViewModel extends ChangeNotifier{
  final navManager = NavManager();
  
  ...
  ...
  ...
}
```

And navigate from there
```dart
  // Naviagte to widgets
  navManager.goTo(HomePage());

  navManager.replace(HomePage());

  navManager.goToAndRemoveUntil(HomePage(), (route) => false);

  // Named Routes
  navManager.goToNamed("/homepage");

  navManager.replaceNamed("/homepage");

  navManager.goToNamedAndRemoveUntil("/homepage", ((route) => false));

  // Full Screen Dialogs
    navManager.goTo(AddContactPage(), fullScreenDialog: true);
```

### Dialogs

Initialize DialogManager in your viewmodel or pass it via constructor.

```dart
class HomeViewModel extends ChangeNotifier{
  final dialogManager = DialogManager();
  
  ...
  ...
  ...
}
```

Show dialogs from viewModel
```dart
  dialogManager.showEasyDialog(builder: (context){
      return YourWidget();
  });

  dialogManager.showEasyDatePicker(initialDate: DateTime.now(),
     firstDate: DateTime.now().subtract(const Duration(hours: 24 * 365)),
      lastDate: DateTime.now().subtract(const Duration(hours: 24 * 365)),
  );

  dialogManager.showEasyGeneralDialog(pageBuilder: ((context, animation, secondaryAnimation) {
    return YourWidget();
  }));
```

### Bottom Sheets

Initialize BottomSheetManager in your viewmodel or pass it via constructor.

```dart
class HomeViewModel extends ChangeNotifier{
  final bottomSheetManager = BottomSheetManager();
  
  ...
  ...
  ...
}
```

Show Bottom Sheets from viewModel
```dart
  bottomSheetManager.showEasyBottomSheet(builder: (context){
      return YourWidget();
  });

  bottomSheetManager.showEasyModalBottomSheet(builder: (context){
    return YourWidget();
  });
```

### Snackbars

Initialize SnackBarManager in your viewmodel or pass it via constructor.

```dart
class HomeViewModel extends ChangeNotifier{
  final snackBarManager = SnackBarManager();
  
  ...
  ...
  ...
}
```

Show Snackbars from viewModel
```dart
  snackBarManager.showEasySnackbar(const SnackBar(content: Text("Item Deleted")));

  snackBarManager.clearAllSnacks();

  snackBarManager.hideCurrentSnackBar();
  
  snackBarManager.removeCurrentSnackBar();
```