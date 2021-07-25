enum CovalentQuoteCurrency {
	usd,
	cad,
	inr,
	eth,
	eur
}
extension CovalentQuoteCurrencyExt on CovalentQuoteCurrency {
  String get value{
    switch (this) {
      case CovalentQuoteCurrency.cad:
        return 'cad';
      case CovalentQuoteCurrency.eth:
        return 'eth';
      case CovalentQuoteCurrency.eur:
        return 'eur';
      case CovalentQuoteCurrency.inr:
        return 'inr';
      case CovalentQuoteCurrency.usd:
        return 'usd';
      default:
        return '';
    }
  }
}