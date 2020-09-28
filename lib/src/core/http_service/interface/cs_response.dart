enum CsHttpResponseCode {
  HTTP_UNAUTHORISED, // = 401,
  HTTP_FORBIDDEN, // = 403,
  HTTP_SUCCESS, // = 200,
  HTTP_BAD_REQUEST, // = 400,
  HTTP_KONG_FAILURE, // = 447,
  HTTP_INTERNAL_SERVER_ERROR, // = 500,
  HTTP_UNKNOWN
}

const CsHttpResponseCodeMap = {
  401: CsHttpResponseCode.HTTP_UNAUTHORISED,
  403: CsHttpResponseCode.HTTP_FORBIDDEN,
  200: CsHttpResponseCode.HTTP_SUCCESS,
  400: CsHttpResponseCode.HTTP_BAD_REQUEST,
  447: CsHttpResponseCode.HTTP_KONG_FAILURE,
  500: CsHttpResponseCode.HTTP_INTERNAL_SERVER_ERROR,
};

class CsResponse {
  CsHttpResponseCode _responseCode;
  Map<String, dynamic> _body;
  Map<String, String> _headers;
  int _statusCode;

  CsResponse(this._responseCode, this._body, this._headers, this._statusCode);

  Map<String, String> get headers => _headers;

  Map<String, dynamic> get body => _body;

  CsHttpResponseCode get responseCode => _responseCode;

  int get statusCode => _statusCode;
}
