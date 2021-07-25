enum CovalentNetworks {
	Ethereum,
	Polygon,
	Avalanche,
	BinanceSmartChain,
	FantomOpera,
	TestnetPolygonMaticMumbai,
	TestnetFujiCChain,
	TestnetKovan,
	TestnetBinanceSmartChain,
	TestnetMoonbaseAlpha,
	TestnetFantom
	
}
extension CovalentNetworksExt on CovalentNetworks {
  String get value{
    switch (this) {
      case CovalentNetworks.Ethereum:
        return '1';
      case CovalentNetworks.Polygon:
        return '137';
      case CovalentNetworks.Avalanche:
        return '43114';
      case CovalentNetworks.BinanceSmartChain:
        return '56';
      case CovalentNetworks.FantomOpera:
        return '250';
      case CovalentNetworks.TestnetPolygonMaticMumbai:
        return '80001';
      case CovalentNetworks.TestnetFujiCChain:
        return '43113';
      case CovalentNetworks.TestnetKovan:
        return '42';
      case CovalentNetworks.TestnetBinanceSmartChain:
        return '97';
      case CovalentNetworks.TestnetMoonbaseAlpha:
        return '1287';
      case CovalentNetworks.TestnetFantom:
        return '4002';

      default:
        return '';
    }
  }
}