import '../../../../../core.dart';
import '../../interface/cs_request.dart';
import '../../interface/cs_request_interceptor.dart';

class UserTokenInjectRequestInterceptor implements CsRequestInterceptor {
  CsConfig _csConfig;

  UserTokenInjectRequestInterceptor(this._csConfig);

  @override
  Stream<CsRequest> interceptRequest(CsRequest request) {
    var userToken = _csConfig.core.api.authentication.userToken;
    var manageUserToken = _csConfig.core.api.authentication.bearerToken;
    if (userToken != null) {
      request.headers['X-Authenticated-User-Token'] = userToken;
    }
    if (manageUserToken != null) {
      request.headers['X-Authenticated-For'] = manageUserToken;
    }
    return Stream.value(request);
  }
}
