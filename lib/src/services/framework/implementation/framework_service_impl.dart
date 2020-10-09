import '../../../../core.dart';
import '../../../../models.dart';
import '../../../core/http_service/interface/cs_http_service.dart';
import '../../../core/http_service/interface/cs_request.dart';
import '../interface/cs_framework_service.dart';
import 'utils/framework_mapper.dart';

class FrameworkServiceImpl implements CsFrameworkService {
  CsConfig _csConfig;
  CsHttpService _httpService;

  FrameworkServiceImpl(this._csConfig, this._httpService);

  @override
  Future<Framework> getFramework(String id,
      [GetFrameworkOptions options, CsFrameworkServiceConfig config]) {
    CsRequest apiRequest = CsRequestBuilder()
        .withType(CsHttpRequestType.GET)
        .withPath(
          "${(config?.frameworkApiPath ?? _csConfig.services.frameworkServiceConfig?.frameworkApiPath)}/read/$id",
        )
        .withParameters(
      options?.requiredCategories != null
          ? Map<String, String>.from(
          {'categories': options.requiredCategories.join(',')})
          : Map<String, String>.from({}),
    )
        .withBearerToken(true)
        .build();

    return this
        ._httpService
        .fetch(apiRequest)
        .map((response) => response.body["result"]["framework"])
        .map((dynamic json) => Framework.fromJson(json))
        .last;
  }

  @override
  Future<Channel> getChannel(String id, [CsFrameworkServiceConfig config]) {
    CsRequest apiRequest = CsRequestBuilder()
        .withType(CsHttpRequestType.GET)
        .withPath(
      "${(config?.channelApiPath ??
          _csConfig.services.frameworkServiceConfig?.channelApiPath)}/read/$id",
    )
        .withBearerToken(true)
        .build();

    return this
        ._httpService
        .fetch(apiRequest)
        .map((response) => response.body["result"]["channel"])
        .map((dynamic json) => Channel.fromJson(json))
        .last;
  }

  @override
  Future<List<Framework>> getChannelSuggestedFrameworkList(Channel channel,
      [getFrameworkOptions = const GetFrameworkOptions([])]) async {
    if (channel.frameworks != null) {
      return channel.frameworks
          .map(FrameworkMapper.prepareFrameworkCategoryAssociations).toList();
    }

    final defaultFramework =
    await getFramework(channel.defaultFramework, getFrameworkOptions)
        .then((f) {
      f.index = 0;
      return f;
    });

    return [defaultFramework];
  }

  @override
  Future<List<CategoryTerm>> getFrameworkCategoryTerms(Framework framework,
      String currentCategoryCode, [
        String previousCategoryCode,
        List<String> selectedTermsCodes,
      ]) async {
    var terms = [];

    if (previousCategoryCode == null) {
      terms = framework.categories
          .firstWhere((c) => c.code == currentCategoryCode)
          .terms ??
          [];
    } else {
      final previousCategorySelectedTerms = (
          framework.categories
              .firstWhere((c) => c.code == previousCategoryCode)
              ?.terms ?? []
      ).where((t) => selectedTermsCodes.contains(t.code)).toList();

      final currentCategoryTerms = framework.categories
          .firstWhere((c) => c.code == currentCategoryCode)
          ?.terms ??
          [];

      return currentCategoryTerms.where((ct) {
        return previousCategorySelectedTerms.firstWhere((pt) {
          return pt.associations.firstWhere((a) {
            return a.category == currentCategoryCode && a.code == ct.code;
          }, orElse: () => null) != null;
        }, orElse: () => null) != null;
      }).toList();
    }

    return terms;
  }
}
