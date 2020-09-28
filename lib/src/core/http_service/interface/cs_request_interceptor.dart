import 'cs_request.dart';

abstract class CsRequestInterceptor {
  Stream<CsRequest> interceptRequest(CsRequest request);
}
