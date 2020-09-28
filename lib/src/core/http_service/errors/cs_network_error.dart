import '../../cs_error.dart' show CsError;

class CsNetworkError extends CsError {
  CsNetworkError(String message) : super(message, "NETWORK_ERROR");
}
