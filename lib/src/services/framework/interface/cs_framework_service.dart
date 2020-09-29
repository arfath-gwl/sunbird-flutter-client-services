import '../../../../core.dart';
import '../../../../models.dart';

abstract class GetFrameworkOptions {
  List<String> requiredCategories;
}

abstract class CsFrameworkService {
  Stream<Framework> getFramework(String id,
      [GetFrameworkOptions options, CsFrameworkServiceConfig config]);

  Stream<Channel> getChannel(String id, [CsFrameworkServiceConfig config]);
}
