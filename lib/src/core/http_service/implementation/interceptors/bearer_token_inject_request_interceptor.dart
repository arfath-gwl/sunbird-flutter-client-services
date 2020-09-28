import '../../../../../core.dart';
import '../../interface/cs_request.dart';
import '../../interface/cs_request_interceptor.dart';

class BearerTokenInjectRequestInterceptor implements CsRequestInterceptor {
  CsConfig _csConfig;

  BearerTokenInjectRequestInterceptor(this._csConfig);

  @override
  Stream<CsRequest> interceptRequest(CsRequest request) {
    var bearerToken = this._csConfig.core.api.authentication.bearerToken;
    if (bearerToken != null) {
      request.headers['Authorization'] = "Bearer $bearerToken";
    }
    return Stream.value(request);
  }
}
