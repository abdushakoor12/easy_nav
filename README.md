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

## Installation

At the moment just do:

```yaml
dependencies:
  flutter:
    sdk: flutter

  easy_nav:
    git:
      url: https://github.com/abdushakoor12/easy_nav.git
      ref: [commit hash like 744e73e5a0e38962eeec96760b1413170618abee] # optional

```