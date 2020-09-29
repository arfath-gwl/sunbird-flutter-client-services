import '../../../../core.dart';
import '../../../../models.dart';
import '../../../core/http_service/interface/cs_http_service.dart';
import '../../../core/http_service/interface/cs_request.dart';
import '../interface/cs_framework_service.dart';

class FrameworkServiceImpl implements CsFrameworkService {
  CsConfig _csConfig;
  CsHttpService _httpService;

  FrameworkServiceImpl(this._csConfig, this._httpService);

  @override
  Stream<Framework> getFramework(String id,
      [GetFrameworkOptions options, CsFrameworkServiceConfig config]) {
    CsRequest apiRequest = CsRequestBuilder()
        .withType(CsHttpRequestType.GET)
        .withPath(
          "${(config?.frameworkApiPath ?? _csConfig.services.frameworkServiceConfig?.frameworkApiPath)}/read/$id",
        )
        .withParameters(
          options?.requiredCategories != null
              ? {'categories': options.requiredCategories.join(',')}
              : {},
        )
        .withBearerToken(true)
        .build();

    return this
        ._httpService
        .fetch(apiRequest)
        .map((response) => response.body["result"]["framework"])
        .map((dynamic json) => Framework.fromJson(json));
  }

  @override
  Stream<Channel> getChannel(String id, [CsFrameworkServiceConfig config]) {
    CsRequest apiRequest = CsRequestBuilder()
        .withType(CsHttpRequestType.GET)
        .withPath(
          "${(config?.channelApiPath ?? _csConfig.services.frameworkServiceConfig?.channelApiPath)}/read/$id",
        )
        .withBearerToken(true)
        .build();

    return this
        ._httpService
        .fetch(apiRequest)
        .map((response) => response.body["result"]["channel"])
        .map((dynamic json) => Channel.fromJson(json));
  }
}
