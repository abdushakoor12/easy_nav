## EasyNav

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