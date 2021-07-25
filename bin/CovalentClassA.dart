import 'CovalentSession.dart';
import 'CovalentNetworks.dart';
import 'CovalentQuoteCurrency.dart';
import 'StringUtil.dart';

class CovalentClassA
{
    CovalentSession covSession;

    CovalentClassA(CovalentSession covSession)
    {
        this.covSession = covSession;
    }

    Future<String> getTokenBalancesForAddress(CovalentNetworks cn, String address, bool nft, bool noNftFetch, CovalentQuoteCurrency cqc, String primer, String match, String group, String sort, int skip, int limit)
    {
        var req = (((cn.value + '/address/') + address) + '/balances_v2/');
        var params = List<String>.from(['nft', 'no-nft-fetch', 'match', 'group', 'sort', 'skip', 'primer', 'quote-currency', 'limit']);
        var paramValues = List<Object>.from([nft ? 'true' : 'false', noNftFetch ? 'true' : 'false', match, group, sort, skip, primer, cqc.value, limit]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getHistoricalPortfolioValueOverTime(CovalentNetworks cn, String address, CovalentQuoteCurrency cqc, String primer, String match, String group, String sort, int skip, int limit)
    {
        var req = (((cn.value + '/address/') + address) + '/portfolio_v2/');
        var params = List<String>.from(['match', 'group', 'sort', 'skip', 'primer', 'quote-currency', 'limit']);
        var paramValues = List<Object>.from([match, group, sort, skip, primer, cqc.value, limit]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getTransactions(CovalentNetworks cn, String address, CovalentQuoteCurrency cqc, bool block_signed_at_asc, bool no_logs, String primer, String match, String group, String sort, int skip, int limit)
    {
        var req = (((cn.value + '/address/') + address) + '/transactions_v2/');
        var params = List<String>.from(['block-signed-at-asc', 'no-logs', 'match', 'group', 'sort', 'skip', 'primer', 'quote-currency', 'limit']);
        var paramValues = List<Object>.from([block_signed_at_asc ? 'true' : 'false', no_logs ? 'true' : false, match, group, sort, skip, primer, cqc.value, limit]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getERC20Transfers(CovalentNetworks cn, String address, String contract_address, CovalentQuoteCurrency cqc, bool block_signed_at_asc, bool no_logs, String primer, String match, String group, String sort, int skip, int limit)
    {
        var req = (((cn.value + '/address/') + address) + '/transfers_v2/');
        var params = List<String>.from(['contract-address', 'match', 'group', 'sort', 'skip', 'primer', 'quote-currency', 'limit']);
        var paramValues = List<Object>.from([contract_address, match, group, sort, skip, primer, cqc.value, limit]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getBlock(CovalentNetworks cn, String blockHeight, CovalentQuoteCurrency cqc, String primer, String match, String group, String sort, int skip, int limit)
    {
        var req = (((cn.value + '/block_v2/') + blockHeight) + '/');
        var params = List<String>.from(['match', 'group', 'sort', 'skip', 'primer', 'quote-currency', 'limit']);
        var paramValues = List<Object>.from([match, group, sort, skip, primer, cqc.value, limit]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getBlockHeights(CovalentNetworks cn, String start_date, String end_date, CovalentQuoteCurrency cqc, String primer, String match, String group, String sort, int skip, int limit)
    {
        var req = (((((cn.value + '/block_v2/') + start_date) + '/') + end_date) + '/');
        var params = List<String>.from(['match', 'group', 'sort', 'skip', 'primer', 'quote-currency', 'limit']);
        var paramValues = List<Object>.from([match, group, sort, skip, primer, cqc.value, limit]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getLogEventsByContractAddress(CovalentNetworks cn, String address, String starting_block, String ending_block, CovalentQuoteCurrency cqc, String primer, String match, String group, String sort, int skip, int limit)
    {
        var req = (((cn.value + '/events/address/') + address) + '/');
        var params = List<String>.from(['starting-block', 'ending-block', 'match', 'group', 'sort', 'skip', 'primer', 'quote-currency', 'limit']);
        var paramValues = List<Object>.from([starting_block, ending_block, match, group, sort, skip, primer, cqc.value, limit]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getLogEventsByTopicHashes(CovalentNetworks cn, String topic, String secondary_topic, String starting_block, String ending_block, String sender_address, CovalentQuoteCurrency cqc, String primer, String match, String group, String sort, int skip, int limit)
    {
        var req = (((cn.value + '/events/topics/') + topic) + '/');
        var params = List<String>.from(['secondary-topic', 'starting-block', 'ending-block', 'sender-address', 'match', 'group', 'sort', 'skip', 'primer', 'quote-currency', 'limit']);
        var paramValues = List<Object>.from([secondary_topic, starting_block, ending_block, sender_address, match, group, sort, skip, primer, cqc.value, limit]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getExternalNFTMetadata(CovalentNetworks cn, String address, String token_id, CovalentQuoteCurrency cqc, String primer, String match, String group, String sort, int skip, int limit)
    {
        var req = (((((cn.value + '/tokens/') + address) + '/nft_metadata/') + token_id) + '/');
        var params = List<String>.from(['match', 'group', 'sort', 'skip', 'primer', 'quote-currency', 'limit']);
        var paramValues = List<Object>.from([match, group, sort, skip, primer, cqc.value, limit]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getNFTTokensIDs(CovalentNetworks cn, String address, CovalentQuoteCurrency cqc, String primer, String match, String group, String sort, int skip, int limit)
    {
        var req = (((cn.value + '/tokens/') + address) + '/nft_token_ids/');
        var params = List<String>.from(['match', 'group', 'sort', 'skip', 'primer', 'quote-currency', 'limit']);
        var paramValues = List<Object>.from([match, group, sort, skip, primer, cqc.value, limit]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getNFTTransactions(CovalentNetworks cn, String address, String token_id, CovalentQuoteCurrency cqc, String primer, String match, String group, String sort, int skip, int limit)
    {
        var req = (((((cn.value + '/tokens/') + address) + '/nft_transactions/') + token_id) + '/');
        var params = List<String>.from(['match', 'group', 'sort', 'skip', 'primer', 'quote-currency', 'limit']);
        var paramValues = List<Object>.from([match, group, sort, skip, primer, cqc.value, limit]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getChangesInTokenHolders(CovalentNetworks cn, String address, CovalentQuoteCurrency cqc, String starting_block, String ending_block, String primer, String match, String group, String sort, int skip, int limit)
    {
        var req = (((cn.value + '/tokens/') + address) + '/token_holders_changes/');
        var params = List<String>.from(['starting-block', 'ending-block', 'match', 'group', 'sort', 'skip', 'primer', 'quote-currency', 'limit']);
        var paramValues = List<Object>.from([starting_block, ending_block, match, group, sort, skip, primer, cqc.value, limit]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getTokenHoldersASOfBlockHeight(CovalentNetworks cn, String address, String block_height, CovalentQuoteCurrency cqc, String starting_block, String ending_block, String primer, String match, String group, String sort, int skip, int limit)
    {
        var req = (((cn.value + '/tokens/') + address) + '/token_holders/');
        var params = List<String>.from(['starting-block', 'match', 'group', 'sort', 'skip', 'primer', 'quote-currency', 'limit']);
        var paramValues = List<Object>.from([starting_block, match, group, sort, skip, primer, cqc.value, limit]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getAllContractMetaData(CovalentNetworks cn, String id, String block_height, CovalentQuoteCurrency cqc, String starting_block, String ending_block, String primer, String match, String group, String sort, int skip, int limit)
    {
        var req = (((cn.value + '/tokens/tokenlists/') + id) + '/');
        var params = List<String>.from(['starting-block', 'match', 'group', 'sort', 'skip', 'primer', 'quote-currency', 'limit']);
        var paramValues = List<Object>.from([starting_block, match, group, sort, skip, primer, cqc.value, limit]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getTransaction(CovalentNetworks cn, String tx_hash, bool no_logs, CovalentQuoteCurrency cqc, String primer, String match, String group, String sort, int skip, int limit)
    {
        var req = (((cn.value + '/transaction_v2/') + tx_hash) + '/');
        var params = List<String>.from(['no-logs', 'match', 'group', 'sort', 'skip', 'primer', 'quote-currency', 'limit']);
        var paramValues = List<Object>.from([no_logs ? 'true' : 'false', match, group, sort, skip, primer, cqc.value, limit]);
        return covSession.query(StringUtil.ConcatUrlParams(req, params, paramValues));
    }

    Future<String> getAllChain()
    {
        var req = 'chains/';
        return covSession.query(req);
    }

    Future<String> getAllChainStatuses()
    {
        var req = 'chains/status/';
        return covSession.query(req);
    }
}