class StringUtil
{

    static String ConcatUrlParams(String url, List<String> params, List<Object> paramValues)
    {
        if (params.length != paramValues.length) {
            return url;
        }
        for (var i = 0; i < params.length; i++) {
            var separator = ((i == 0) ? '?' : '&');
            if(paramValues[i] is String){
                if (paramValues[i].toString()!=''){
                url += (((separator + params[i]) + '=') + paramValues[i].toString());
              }
            }
            else if (paramValues[i] is int){
              if(int.parse(paramValues[i].toString())>0){
                url += (((separator + params[i]) + '=') + paramValues[i].toString());
              }
            }
            
        }
        return url;
    }
}