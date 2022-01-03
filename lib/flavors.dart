enum Flavor {
  PROD,
  UAT,
  DEV,
}

extension FlavorName on Flavor {
  String get name => toString().split('.').last;
}

class _Options{

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
}
