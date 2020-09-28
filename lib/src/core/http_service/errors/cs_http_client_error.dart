import '../../cs_error.dart' show CsError;
import '../interface/cs_response.dart';

class CsHttpClientError extends CsError {
  CsResponse _response;

  CsHttpClientError(String message, this._response)
      : super(message, "HTTP_CLIENT_ERROR");

  CsResponse get response => _response;
}
