import '../../cs_error.dart' show CsError;
import '../interface/cs_response.dart';

class CsHttpServerError extends CsError {
  CsResponse _response;

  CsHttpServerError(String message, this._response)
      : super(message, "HTTP_SERVER_ERROR");

  CsResponse get response => _response;
}
