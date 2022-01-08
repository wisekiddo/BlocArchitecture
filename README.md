# Flutter BLoC Architecture Template

This serves as a Template for Flutter BLoC Architecture. It also app release ready and setup to be full-pledge template. Customisable Features added are:
> * Environment Flavours for both android and iOS
> * Native Splash Screen
> * sdfsdfsd
> * sdf
> * 

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

flutter\_flavorizr - This tool will allow the app to have different builds for different environment of our app with a set of flavor for development, a flavor for production, and another flavor for a user acceptance test. In this way we can have different versions of our apps before we put them in the app stores to be published.

We did minor changes on the implementation by removing the redundunt main.dart for every flavor

    flutter pub run flutter_flavorizr
    flutter run --flavor dev -t lib/main.dart --dart-define=env="dev"
    flutter run --flavor dev --dart-define=env="dev"
    
### Flutter Splash Screen
flutter\_native\_splash - Is a tool that auto generate a native implementation of Splash Screen.
To start with the customisation you may need to follow the setup found in the library page: [https://pub.dev/packages/flutter\_native\_splash](https://pub.dev/packages/flutter_native_splash).
You can also directly edit pubspec.yaml for the existing implementation just look for flutter\_native\_splash: part of the scripts below are the commands on activating and disabling the setup

Activate the setup

	flutter pub run flutter_native_splash:create
Remove the setup

	flutter pub run flutter_native_splash:remove
### Flutter Bloc

https://pub.dev/packages/bloc - 
    https://github.com/giantsol/Blue-Diary/blob/master/lib/data/ToDoRepositoryImpl.dart

