import 'cs_request.dart';
import 'cs_request_interceptor.dart';
import 'cs_response.dart';
import 'cs_response_interceptor.dart';

abstract class CsHttpService {
  List<CsRequestInterceptor> get requestInterceptors;

  List<CsResponseInterceptor> get responseInterceptors;

  Stream<CsResponse> fetch(CsRequest request);
}
