import 'CovalentSession.dart';
import 'CovalentNetworks.dart';
import 'StringUtil.dart';

enum CovalentSupportedDex {
  sushiswap,
  quickswap,
  pangolin,
  spiritswap,
  spookyswap
}
extension CovalentSupportedDexExt on CovalentSupportedDex {
  String get value{
    switch (this) {
      case CovalentSupportedDex.sushiswap:
        return 'sushiswap';
      case CovalentSupportedDex.quickswap:
        return 'quickswap';
      case CovalentSupportedDex.pangolin:
        return 'pangolin';
      case CovalentSupportedDex.spiritswap:
        return 'spiritswap';
      case CovalentSupportedDex.spookyswap:
        return 'spookyswap';
      default:
        return '';
    }
  }
}

class CovalentDex
{
    CovalentSession covSession;
    CovalentDex(CovalentSession covSession)
    {
        this.covSession = covSession;
    }
    // https://api.covalenthq.com/v1/{chain_id}/xy=k/{dexname}/health/
    Future<String> health(CovalentNetworks cn,CovalentSupportedDex dex)
    {
      var req = (((cn.value + '/xy=k/') + dex.value) + '/health/');
      return covSession.query(req);
    }

    // https://api.covalenthq.com/v1/{chain_id}/xy=k/{dexname}/ecosystem/
    Future<String> ecosystem(CovalentNetworks cn,CovalentSupportedDex dex)
    {
      var req = (((cn.value + '/xy=k/') + dex.value) + '/ecosystem/');
      return covSession.query(req);
    }

    // https://api.covalenthq.com/v1/{chain_id}/xy=k/{dexname}/pools/
    Future<String> pools(CovalentNetworks cn,CovalentSupportedDex dex)
    {
      var req = (((cn.value + '/xy=k/') + dex.value) + '/pools/');
      return covSession.query(req);
    }

    // https://api.covalenthq.com/v1/{chain_id}/xy=k/{dexname}/pools/address/{address}/
    Future<String> poolDataByAddress(CovalentNetworks cn,CovalentSupportedDex dex,String address)
    {
      var req = cn.value + '/xy=k/' + dex.value + '/pools/address/'+address+'/';
      return covSession.query(req);
    }

    // https://api.covalenthq.com/v1/{chain_id}/xy=k/{dexname}/pools/address/{address}/transactions/
    Future<String> poolTransactionsByAddress(CovalentNetworks cn,CovalentSupportedDex dex,String address)
    {
      var req = cn.value + '/xy=k/' + dex.value + '/pools/address/'+address+'/transactions/';
      return covSession.query(req);
    }

    // https://api.covalenthq.com/v1/{chain_id}/xy=k/{dexname}/tokens/
    Future<String> tokens(CovalentNetworks cn,CovalentSupportedDex dex)
    {
      var req = cn.value + '/xy=k/' + dex.value + '/tokens/';
      return covSession.query(req);
    }

    // https://api.covalenthq.com/v1/{chain_id}/xy=k/{dexname}/tokens/address/{address}/
    Future<String> tokenDataByAddress(CovalentNetworks cn,CovalentSupportedDex dex,String address)
    {
      var req = cn.value + '/xy=k/' + dex.value + '/tokens/address/'+address+'/';
      return covSession.query(req);
    }
    // https://api.covalenthq.com/v1/{chain_id}/xy=k/{dexname}/tokens/address/{address}/transactions/
    Future<String> tokenTransactionsByAddress(CovalentNetworks cn,CovalentSupportedDex dex,String address)
    {
      var req = cn.value + '/xy=k/' + dex.value + '/tokens/address/'+address+'/transactions/';
      return covSession.query(req);
    }
    // https://api.covalenthq.com/v1/{chain_id}/xy=k/{dexname}/address/{address}/balances/
    Future<String> addressExchangesBalances(CovalentNetworks cn,CovalentSupportedDex dex,String address)
    {
      var req = cn.value + '/xy=k/' + dex.value + '/address/'+address+'/balances/';
      return covSession.query(req);
    }
    // https://api.covalenthq.com/v1/{chain_id}/xy=k/{dexname}/address/{address}/transactions/
    Future<String> addressExchangesLiqudityTransactions(CovalentNetworks cn,CovalentSupportedDex dex,String address)
    {
      var req = cn.value + '/xy=k/' + dex.value + '/address/'+address+'/transactions/';
      return covSession.query(req);
    }
}