enum Flavor {
  prod,
  dev,
}

class AppConfig {
  final Flavor flavor;
  final String baseUrl;

  AppConfig({
    required this.flavor,
    required this.baseUrl,
  });

  factory AppConfig.fromFlavor(Flavor flavor) {
    String baseUrl;
    switch (flavor) {
      case Flavor.dev:
        baseUrl = 'https://rickandmortyapi.com/api';

      case Flavor.prod:
        baseUrl = '';
    }

    return AppConfig(
      flavor: flavor,
      baseUrl: baseUrl,
    );
  }
}
