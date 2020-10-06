import '../../../../core.dart';
import '../../../../models.dart';

class GetFrameworkOptions {
  final List<String> requiredCategories;

  const GetFrameworkOptions(this.requiredCategories);
}

abstract class CsFrameworkService {
  Future<Framework> getFramework(String id,
      [GetFrameworkOptions options, CsFrameworkServiceConfig config]);

  Future<Channel> getChannel(String id, [CsFrameworkServiceConfig config]);

  Future<List<Framework>> getChannelSuggestedFrameworkList(Channel channel,
      [GetFrameworkOptions getFrameworkOptions]);

  Future<List<CategoryTerm>> getFrameworkCategoryTerms(
    Framework framework,
    String currentCategoryCode, [
    String previousCategoryCode,
    List<String> selectedTermsCodes,
  ]);
}
