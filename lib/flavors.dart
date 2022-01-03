enum Flavor {
  PROD,
  UAT,
  DEV,
}

extension FlavorName on Flavor {
  String get name => toString().split('.').last;
}

abstract class _Options{
  String get baseUrl;
  String get title;
}
class _Prod extends _Options{
  @override
  String get baseUrl => '';
  @override
  String get title => '';
}
class _Uat extends _Options{
  @override
  String get baseUrl => '';
  @override
  String get title => '';
}

class _Dev extends _Options{
  @override
  String get baseUrl => '';
  @override
  String get title => 'Block UAT';
}


class Environment {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.PROD:
        return 'Bloc';
      case Flavor.UAT:
        return 'Bloc UAT';
      case Flavor.DEV:
        return 'Bloc DEV';
      default:
        return 'title';
    }
  }

  static _Options get options {
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
