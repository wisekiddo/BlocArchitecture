# bloc

A Flutter Bloc Architecture

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Changing app name

Steps to change app name in Android:

Navigate to the android>app> src>main and open the AndroidManifest.xml file.
Under the application tag, Find the android:label and replace its value with the new app name.
Hit flutter clean command in the terminal.
Completely stop and run your app.


Steps to change app name in iOS:

Navigate to the ios>Runner and open the info.plist file.
Find the key named as CFBundleName and replace the string value (below it) to reflect the new app name.
Hit flutter clean command in the terminal.
Completely stop and run your app.

## Changing App Launcher Icon

Best Tutorial here: https://flutterbeads.com/change-app-launcher-icon-flutter/

## Creating Splash Screen

https://docs.flutter.dev/development/ui/advanced/splash-screen
https://pub.dev/packages/splashscreen

## Libraries

### Flutter Flavor

This tool lets us make different builds for different versions of our app. Among other things, we could make a flavor for development, a flavor for production, and another flavor for a demo of the app. In this way, we can make different flavors of our apps before we put them on the App Store and Google Play. This way, we can have different versions of our apps before we put them on these stores and apps.
flutter pub run flutter_flavor:main
flutter run --dart-define=env="development"

https://pub.dev/packages/bloc - 
    https://github.com/giantsol/Blue-Diary/blob/master/lib/data/ToDoRepositoryImpl.dart

https://pub.dev/packages/flutter_flavor