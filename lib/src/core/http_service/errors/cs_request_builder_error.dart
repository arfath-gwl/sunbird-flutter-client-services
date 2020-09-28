import '../../cs_error.dart' show CsError;

class CsRequestBuilderError extends CsError {
  CsRequestBuilderError(String message) : super(message, "REQUEST_BUILD_ERROR");
}
