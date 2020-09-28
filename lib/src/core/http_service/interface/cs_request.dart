import '../errors/cs_request_builder_error.dart';
import 'cs_request_interceptor.dart';
import 'cs_response_interceptor.dart';

enum CsHttpSerializer {
  JSON,
  URLENCODED,
  UTF8,
  RAW,
}

enum CsHttpRequestType {
  GET,
  POST,
  PATCH,
  DELETE,
}

class CsRequestBuilder {
  CsRequest _request;

  CsRequestBuilder() {
    this._request = CsRequest._();
  }

  withHost(String host) {
    this._request._host = host;
    return this;
  }

  withPath(String path) {
    this._request._path = path;
    return this;
  }

  withType(CsHttpRequestType type) {
    this._request._type = type;
    return this;
  }

  withResponseInterceptor(CsResponseInterceptor responseInterceptor) {
    this._request._responseInterceptors.add(responseInterceptor);
    return this;
  }

  withRequestInterceptor(CsRequestInterceptor requestInterceptor) {
    this._request._requestInterceptors.add(requestInterceptor);
    return this;
  }

  withHeaders(Map<String, String> headers) {
    this._request._headers = headers;
    return this;
  }

  withBody(dynamic body) {
    this._request._body = body;
    return this;
  }

  withParameters(Map<String, String> parameters) {
    this._request._parameters = parameters;
    return this;
  }

  withBearerToken(bool required) {
    this._request._withBearerToken = required;
    return this;
  }

  withUserToken(bool required) {
    this._request._withUserToken = required;
    return this;
  }

  withSerializer(CsHttpSerializer serializer) {
    this._request._serializer = serializer;
    return this;
  }

  CsRequest build() {
    if (this._request._path == null) {
      throw CsRequestBuilderError('withPath() is required');
    }

    if (this._request._type == null) {
      throw new CsRequestBuilderError('withType() is required');
    }

    return this._request;
  }
}

class CsRequest {
  CsHttpSerializer _serializer = CsHttpSerializer.JSON;
  List<CsResponseInterceptor> _responseInterceptors = [];
  List<CsRequestInterceptor> _requestInterceptors = [];
  bool _withBearerToken = false;
  bool _withUserToken = false;
  String _host;
  String _path;
  CsHttpRequestType _type;
  Map<String, String> _headers = {};
  dynamic _body;
  Map<String, String> _parameters = {};

  CsHttpSerializer get serializer => _serializer;

  CsRequest._();

  List<CsResponseInterceptor> get responseInterceptors => _responseInterceptors;

  List<CsRequestInterceptor> get requestInterceptors => _requestInterceptors;

  bool get withBearerToken => _withBearerToken;

  bool get withUserToken => _withUserToken;

  String get host => _host;

  String get path => _path;

  CsHttpRequestType get type => _type;

  Map<String, String> get headers => _headers;

  dynamic get body => _body;

  Map<String, String> get parameters => _parameters;

  set headers(Map<String, String> value) {
    _headers = value;
  }
}
