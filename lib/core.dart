import 'package:kiwi/kiwi.dart';
import 'package:sunbird_flutter_client_services/src/core/http_service/interface/cs_http_service.dart';

import 'src/core/http_service/implementation/http-service-impl.dart';

abstract class CsCoreGlobalConfig {
  String channelId;
  String producerId;
  String deviceId;
}

abstract class CsCoreApiAuthenticationConfig {
  String userToken;
  String managedUserToken;
  String bearerToken;
}

abstract class CsCoreApiConfig {
  String host;
  CsCoreApiAuthenticationConfig authentication;
}

abstract class CsCoreConfig {
  CsCoreGlobalConfig global;
  CsCoreApiConfig api;
}

abstract class CsServicesConfig {
  CsFrameworkServiceConfig frameworkServiceConfig;
}

abstract class CsConfig {
  CsCoreConfig core;
  CsServicesConfig services;
}

abstract class CsFrameworkServiceConfig {
  String frameworkApiPath;
  String channelApiPath;
}

class CsModule {
  static final CsModule _singleton = CsModule._internal();

  factory CsModule() {
    return _singleton;
  }

  CsModule._internal();

  KiwiContainer _container;
  bool _isInitialised;
  CsConfig _csConfig;

  bool get isInitialised => _isInitialised;

  CsConfig get csConfig => _csConfig;

  init(CsConfig csConfig) async {
    _container = KiwiContainer();

    _isInitialised = true;
  }

  updateConfig(CsConfig csConfig) {
    _csConfig = csConfig;
    _container
        .registerSingleton<CsHttpService>((c) => HttpServiceImpl(_csConfig));
  }

  CsHttpService get httpService {
    return _container.resolve<CsHttpService>();
  }
}
