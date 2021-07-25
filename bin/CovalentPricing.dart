import 'CovalentSession.dart';
import 'CovalentNetworks.dart';
import 'CovalentQuoteCurrency.dart';

class CovalentPricing
{
    CovalentSession covSession;

    CovalentPricing(CovalentSession covSession)
    {
        this.covSession = covSession;
    }

    Future<String> getHistoricalByAddress(CovalentNetworks cn, CovalentQuoteCurrency cqc, String contractAddress)
    {
        var req = (((((('pricing/historical_by_address/' + cn.value) + '/') + cqc.value) + '/') + contractAddress) + '/');
        return covSession.query(req);
    }

    Future<String> getHistoricalByAddressesV2(CovalentNetworks cn, CovalentQuoteCurrency cqc, String contractAddresses)
    {
        var req = (((((('pricing/historical_by_addresses_v2/' + cn.value) + '/') + cqc.value) + '/') + contractAddresses) + '/');
        return covSession.query(req);
    }

    Future<String> getHistoricalByAddresses(CovalentNetworks cn, CovalentQuoteCurrency cqc, String contractAddresses)
    {
        var req = (((((('pricing/historical_by_addresses/' + cn.value) + '/') + cqc.value) + '/') + contractAddresses) + '/');
        return covSession.query(req);
    }

    Future<String> getHistoricalPriceByTickerSymbol(CovalentQuoteCurrency cqc, String tickerSymbol)
    {
        var req = (((('pricing/historical/' + cqc.value) + '/') + tickerSymbol) + '/');
        return covSession.query(req);
    }

    Future<String> getSpotPrices()
    {
        var req = ('pricing/tickers/');
        return covSession.query(req);
    }

    Future<String> getSpotPricesByTickerSymbol(CovalentQuoteCurrency cqc, String tickersSymbols)
    {
        var req = ((('pricing/tickers/' + cqc.value) + '/?tickers=') + tickersSymbols);
        return covSession.query(req);
    }

    Future<String> getPricesVolatility(CovalentQuoteCurrency cqc)
    {
        var req = (('pricing/volatility/' + cqc.value) + '/');
        return covSession.query(req);
    }

    Future<String> getPricesVolatilityByTickerSymbol(CovalentQuoteCurrency cqc, String tickersSymbols)
    {
        var req = ((('pricing/volatility/' + cqc.value) + '/?tickers=') + tickersSymbols);
        return covSession.query(req);
    }
}