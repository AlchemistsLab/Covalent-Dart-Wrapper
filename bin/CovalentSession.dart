import 'package:http/http.dart' as http;

class CovalentSession
{
    String apiKey;
    String format = '';
    String fromDate = '';
    String toDate = '';
    int pageSize=0;
    int pageNumber=0;
    bool pricesAscending=false;
    static String serverUrl = 'https://api.covalenthq.com/v1/';

    CovalentSession(String apiKey)
    {
        this.apiKey = apiKey;
        setFormat('json');
    }

    String getKey()
    {
        return apiKey;
    }

    void setKey(String apiKey)
    {
        this.apiKey = apiKey;
    }

    bool isPricesAscending()
    {
        return pricesAscending;
    }

    void setPricesAscending(bool pricesAscending)
    {
        this.pricesAscending = pricesAscending;
    }

    int getPageNumber()
    {
        return pageNumber;
    }

    void setPageNumber(int pageNumber)
    {
        this.pageNumber = pageNumber;
    }

    int getPageSize()
    {
        return pageSize;
    }

    void setPageSize(int pageSize)
    {
        this.pageSize = pageSize;
    }

    String getToDate()
    {
        return toDate;
    }

    void setToDate(String toDate)
    {
        this.toDate = toDate;
    }

    String getFromDate()
    {
        return fromDate;
    }

    void setFromDate(String fromDate)
    {
        this.fromDate = fromDate;
    }

    String getFormat()
    {
        return format;
    }

    void setFormat(String format)
    {
        this.format = format;
    }

    Future<String> query(String requestURL) async
    {
        var url = (serverUrl + requestURL);
        if (requestURL.substring(requestURL.length - 1) == '/') {
            url += ('?key=' + apiKey);
        } else {
            url += ('&key=' + apiKey);
        }
        if (getFormat() != '') {
            url += ('&format=' + getFormat());
        }
        if (getFromDate() != '') {
            url += ('&from=' + getFromDate());
        }
        if (getToDate() != '') {
            url += ('&to=' + getToDate());
        }
        if (isPricesAscending()) {
            url += '&prices-at-asc=true';
        }
        if (getPageSize() > 0) {
            url += ('&page-size= ${getPageSize()}');
        }
        if (getPageNumber() > 0) {
            url += ('&page-number= ${getPageNumber()}');
        }
        var urlObj = Uri.parse(url);
        var response = await http.get(urlObj);
        //print('Response status: ${response.statusCode}');
        print('request url: $url');
        return response.body;
    }
}