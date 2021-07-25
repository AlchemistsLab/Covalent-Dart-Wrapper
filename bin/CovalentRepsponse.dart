class CovalentResponse
{
    String data;
    bool error;
    String error_message;
    String error_code;

    bool isError()
    {
        return error;
    }

    void setError(bool error)
    {
        this.error = error;
    }

    String getData()
    {
        return data;
    }

    void setData(String data)
    {
        this.data = data;
    }

    String getError_message()
    {
        return error_message;
    }

    void setError_message(String error_message)
    {
        this.error_message = error_message;
    }

    String getError_code()
    {
        return error_code;
    }

    void setError_code(String error_code)
    {
        this.error_code = error_code;
    }
}