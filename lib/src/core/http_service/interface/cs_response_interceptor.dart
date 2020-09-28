import 'cs_request.dart';
import 'cs_response.dart';

abstract class CsResponseInterceptor {
  Stream<CsResponse> interceptResponse(CsRequest request, CsResponse response);
}
