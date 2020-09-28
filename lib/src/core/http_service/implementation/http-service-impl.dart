import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/streams.dart';
import 'package:sunbird_flutter_client_services/core.dart';

import '../errors/cs_http_client_error.dart';
import '../errors/cs_http_server_error.dart';
import '../interface/cs_http_service.dart';
import '../interface/cs_request.dart';
import '../interface/cs_request_interceptor.dart';
import '../interface/cs_response.dart';
import '../interface/cs_response_interceptor.dart';
import 'http_mapper.dart';
import 'interceptors/bearer_token_inject_request_interceptor.dart';
import 'interceptors/user_token_inject_request_interceptor.dart';

class HttpServiceImpl implements CsHttpService {
  CsConfig _csConfig;

  HttpServiceImpl(this._csConfig) {
    _bearerTokenInjectRequestInterceptor =
        BearerTokenInjectRequestInterceptor(this._csConfig);
    _userTokenInjectRequestInterceptor =
        UserTokenInjectRequestInterceptor(this._csConfig);
  }

  List<CsRequestInterceptor> _requestInterceptors = [];
  List<CsResponseInterceptor> _responseInterceptors = [];

  BearerTokenInjectRequestInterceptor _bearerTokenInjectRequestInterceptor;
  UserTokenInjectRequestInterceptor _userTokenInjectRequestInterceptor;

  String get host => _csConfig.core.api.host;

  String get channelId => _csConfig.core.global.channelId;

  String get deviceId => _csConfig.core.global.deviceId;

  String get producerId => _csConfig.core.global.producerId;

  @override
  List<CsRequestInterceptor> get requestInterceptors => _requestInterceptors;

  @override
  List<CsResponseInterceptor> get responseInterceptors => _responseInterceptors;

  @override
  Stream<CsResponse> fetch(CsRequest request) {
    return DeferStream(() {
      _normalizeRequest(request);

      return _interceptRequest(request).asStream();
    }).flatMap<CsResponse>((event) {
      var uri = Uri.https(
          (request.host ?? this.host), request.path, request.parameters);

      switch (request.type) {
        case CsHttpRequestType.GET:
          {
            return Stream.fromFuture(http.get(uri, headers: request.headers))
                .map(HttpMapper.mapResponse)
                .flatMap((response) =>
                    _interceptResponse(request, response).asStream());
          }
          break;
        case CsHttpRequestType.PATCH:
          {
            return Stream.fromFuture(http.patch(uri,
                    headers: request.headers, body: request.body))
                .map(HttpMapper.mapResponse)
                .flatMap((response) =>
                    _interceptResponse(request, response).asStream());
          }
          break;
        case CsHttpRequestType.POST:
          {
            return Stream.fromFuture(http.post(uri,
                    headers: request.headers, body: request.body))
                .map(HttpMapper.mapResponse)
                .flatMap((response) =>
                    _interceptResponse(request, response).asStream());
          }
          break;
        case CsHttpRequestType.DELETE:
          {
            return Stream.fromFuture(http.delete(uri, headers: request.headers))
                .map(HttpMapper.mapResponse)
                .flatMap((response) =>
                    _interceptResponse(request, response).asStream());
          }
          break;
        default:
          {
            throw Exception('Unknown Request type');
          }
      }
    }).map((response) {
      if (response.statusCode >= 400 && response.statusCode <= 499) {
        throw CsHttpClientError(request.path, response);
      } else if (response.statusCode >= 500 && response.statusCode <= 599) {
        throw CsHttpServerError(request.path, response);
      }

      return response;
    });
  }

  Future<CsRequest> _interceptRequest(CsRequest request) async {
    List<CsRequestInterceptor> interceptors = [
      ...this.requestInterceptors,
      ...request.requestInterceptors
    ];

    for (var interceptor in interceptors) {
      request = await interceptor.interceptRequest(request).last;
    }

    return request;
  }

  Future<CsResponse> _interceptResponse(
      CsRequest request, CsResponse response) async {
    List<CsResponseInterceptor> interceptors = [
      ...this.responseInterceptors,
      ...request.responseInterceptors
    ];

    for (var interceptor in interceptors) {
      response = await interceptor.interceptResponse(request, response).last;
    }

    if (response.responseCode != CsHttpResponseCode.HTTP_SUCCESS) {
      throw response;
    }

    return response;
  }

  _normalizeRequest(CsRequest request) {
    _buildInterceptorsFromRequest(request);

    request.headers = _prependGlobalHeaders(request.headers);

    if (request.serializer == CsHttpSerializer.URLENCODED) {
      request.headers["Content-Type"] = "application/x-www-form-urlencoded";
    } else {
      request.headers["Content-Type"] = "application/json";
    }
  }

  _prependGlobalHeaders(Map<String, String> headers) {
    var globalHeaders = {
      'X-Channel-Id': this.channelId,
      'X-App-Id': this.producerId,
      'X-Device-Id': this.deviceId,
      'Accept': 'application/json',
      'Access-Control-Allow-Origin': '*'
    };

    globalHeaders.addAll(headers);

    return globalHeaders;
  }

  _buildInterceptorsFromRequest(CsRequest request) {
    if (request.withBearerToken &&
        !request.requestInterceptors
            .contains(this._bearerTokenInjectRequestInterceptor)) {
      request.requestInterceptors
          .add(this._bearerTokenInjectRequestInterceptor);
    }

    if (request.withUserToken &&
        !request.requestInterceptors
            .contains(this._userTokenInjectRequestInterceptor)) {
      request.requestInterceptors.add(this._userTokenInjectRequestInterceptor);
    }
  }
}
