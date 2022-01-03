import 'package:flutter/foundation.dart';

enum Flavor {
  PROD,
  UAT,
  DEV,
}

extension FlavorName on Flavor {
  String get name => toString().split('.').last;
}

abstract class _Flavor{
  String get baseUrl;
  String get title;
}
class _Prod extends _Flavor{
  @override
  String get baseUrl => '';
  @override
  String get title => 'Bloc Prod';
}
class _Uat extends _Flavor{
  @override
  String get baseUrl => '';
  @override
  String get title => 'Bloc Uat';
}

class _Dev extends _Flavor{
  @override
  String get baseUrl => '';
  @override
  String get title => 'Bloc Dev';
}


class Environment {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';
  static Flavor valueOf(String value) => Flavor.values.where((e) => describeEnum(e) == value).first;

  static _Flavor get flavor {
    switch (appFlavor) {
      case Flavor.PROD:
        return _Prod();
      case Flavor.UAT:
        return _Uat();
      case Flavor.DEV:
        return _Dev();
      default:
        return _Prod();
    }
  }
}
