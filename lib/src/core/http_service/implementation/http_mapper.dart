import 'dart:convert';

import 'package:http/http.dart';

import '../interface/cs_response.dart';

class HttpMapper {
  static mapResponse(Response httpResponse) {
    var body;
    try {
      body = jsonDecode(httpResponse.body);
    } catch (e) {
      body = httpResponse.body;
    }

    CsResponse scResponse = CsResponse(
      CsHttpResponseCodeMap[httpResponse.statusCode] ??
          CsHttpResponseCode.HTTP_UNKNOWN,
      body,
      httpResponse.headers,
      httpResponse.statusCode,
    );

    return scResponse;
  }
}
