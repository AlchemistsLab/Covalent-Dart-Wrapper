import 'CovalentSession.dart';
import 'CovalentNetworks.dart';
import 'CovalentQuoteCurrency.dart';
import 'StringUtil.dart';

class CovalentClassB
{
    CovalentSession covSession;

    CovalentClassB(CovalentSession covSession)
    {
        this.covSession = covSession;
    }

    Future<String> getAaveV2AddressBalances(CovalentNetworks cn, String address)
    {
        var req = (((cn.value + '/address/') + address) + '/stacks/aave_v2/balances/');
        return covSession.query(req);
    }

    Future<String> getSushiswapAddressExchangeLiquidityTransactions(CovalentNetworks cn, String address, CovalentQuoteCurrency cqc, String swaps)
    {
        var req = (((cn.value + '/address/') + address) + '/stacks/sushiswap/acts/');
        var params = List<String>.from(['quote-currency', 'swaps']);
        var paramValues = List<Object>.from([cqc.value, swaps]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getSushiswapAddressExchange(CovalentNetworks cn, String address, CovalentQuoteCurrency cqc)
    {
        var req = (((cn.value + '/address/') + address) + '/stacks/sushiswap/balances/');
        var params = List<String>.from(['quote-currency']);
        var paramValues = List<Object>.from([cqc.value]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getAaveV2NetworkAssets(CovalentNetworks cn)
    {
        var req = (cn.value + '/networks/aave_v2/assets/');
        return covSession.query(req);
    }

    Future<String> getSushiswapNetworkAssets(CovalentNetworks cn, String tickers)
    {
        var req = (cn.value + '/networks/aave_v2/assets/');
        var params = List<String>.from(['tickers']);
        var paramValues = List<Object>.from([tickers]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getAaveV2AddressBalance(CovalentNetworks cn, String address)
    {
        var req = (('1/address/' + address) + '/stacks/aave_v2/balances/');
        return covSession.query(req);
    }

    Future<String> getAaveAddressBalance(String address)
    {
        var req = (('1/address/' + address) + '/stacks/aave/balances/');
        return covSession.query(req);
    }

    Future<String> getBalancerExchangeAddressBalance(String address)
    {
        var req = (('1/address/' + address) + '/stacks/balancer/balances/');
        return covSession.query(req);
    }

    Future<String> getCompoundAddressActivity(String address)
    {
        var req = (('1/address/' + address) + '/stacks/compound/acts/');
        return covSession.query(req);
    }

    Future<String> getCompoundAddressBalances(String address)
    {
        var req = (('1/address/' + address) + '/stacks/compound/balances/');
        return covSession.query(req);
    }

    Future<String> getCurveAddressBalances(String address)
    {
        var req = (('1/address/' + address) + '/stacks/curve/balances/');
        return covSession.query(req);
    }

    Future<String> getFarminAddressStats(String address)
    {
        var req = (('1/address/' + address) + '/stacks/farming/positions/');
        return covSession.query(req);
    }

    Future<String> getUniswapV1AddressExchangeBalances(String address)
    {
        var req = (('1/address/' + address) + '/stacks/uniswap_v1/balances/');
        return covSession.query(req);
    }

    Future<String> getUniswapV2AddressLquidityTransactions(String address, String swaps)
    {
        var req = (('1/address/' + address) + '/stacks/uniswap_v2/acts/');
        var params = List<String>.from(['swaps']);
        var paramValues = List<Object>.from([swaps]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getUniswapV2AddressExchangeBalances(String address)
    {
        var req = (('1/address/' + address) + '/stacks/uniswap_v2/balances/');
        return covSession.query(req);
    }

    Future<String> getAaveNetworkAssets()
    {
        var req = '1/networks/aave/assets/';
        return covSession.query(req);
    }

    Future<String> getAugurMarketAffiliateFeeDivisors()
    {
        var req = '1/networks/augur/affiliate_fee/';
        return covSession.query(req);
    }

    Future<String> getCompoundNetworkAssets()
    {
        var req = '1/networks/compound/assets/';
        return covSession.query(req);
    }

    Future<String> getUniswapV2NetworkAssets()
    {
        var req = '1/networks/uniswap_v2/assets/';
        return covSession.query(req);
    }

    Future<String> getPancakeswapV2AddressExchangeBalances(String address, CovalentQuoteCurrency cqc)
    {
        var req = (('56/address/' + address) + '/stacks/pancakeswap_v2/balances/');
        var params = List<String>.from(['quote-currency']);
        var paramValues = List<Object>.from([cqc.value]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getPancakeswapV2AddressExchangeLiquidityTransactions(String address, CovalentQuoteCurrency cqc, String swaps)
    {
        var req = (('56/address/' + address) + '/stacks/pancakeswap/acts/');
        var params = List<String>.from(['quote-currency', 'swaps']);
        var paramValues = List<Object>.from([cqc.value, swaps]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getPancakeswapAddressExchangeBalances(String address, CovalentQuoteCurrency cqc)
    {
        var req = (('56/address/' + address) + '/stacks/pancakeswap/balances/');
        var params = List<String>.from(['quote-currency']);
        var paramValues = List<Object>.from([cqc.value]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getPancakeswapV2NetworkAssets(String tickers, String contract_addresses)
    {
        var req = '56/networks/pancakeswap_v2/assets/';
        var params = List<String>.from(['tickers', 'contract-addresses']);
        var paramValues = List<Object>.from([tickers, contract_addresses]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getPancakeswapV2NetworkAssetsByAddress(String addresses)
    {
        var req = (('56/networks/pancakeswap_v2/assets/' + addresses) + '/');
        return covSession.query(req);
    }

    Future<String> getPancakeswapNetworkAssets(String tickers)
    {
        var req = '56/networks/pancakeswap/assets/';
        var params = List<String>.from(['tickers']);
        var paramValues = List<Object>.from([tickers]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }
}