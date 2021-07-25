import 'CovalentQuoteCurrency.dart';
import 'CovalentNetworks.dart';
import 'CovalentSession.dart';
import 'CovalentPricing.dart';
import 'CovalentClassA.dart';


void main(List<String> arguments) async {
  var sess=CovalentSession('YOUR_API_KEY_HERE');
  var pricing=CovalentPricing(sess);
  print(await pricing.getSpotPrices());
  var cclassA=CovalentClassA(sess);
  print(await cclassA.getTokenBalancesForAddress(CovalentNetworks.Ethereum,'0xab5801a7d398351b8be11c439e05c5b3259aec9b',false,true,CovalentQuoteCurrency.usd,'','','','',0,0));
}
