enum Environment {
  development(
    bannerText: 'Development',
    bannerColor: 'blue',
  ),
  production(
    bannerText: 'Production',
    bannerColor: 'green',
  ),
  staging(
    bannerText: 'Staging',
    bannerColor: 'yellow',
  );

  const Environment({
    required this.bannerText,
    required this.bannerColor,
  });
  static Environment current = Environment.development;

  final String bannerText;
  final String bannerColor;
}
