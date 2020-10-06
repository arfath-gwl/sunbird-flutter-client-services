import 'package:flutter/foundation.dart';
import 'package:kiwi/kiwi.dart';
import 'package:sunbird_flutter_client_services/src/core/http_service/interface/cs_http_service.dart';

import 'src/core/http_service/implementation/http-service-impl.dart';

class CsCoreGlobalConfig {
  String channelId;
  String producerId;
  String deviceId;

  CsCoreGlobalConfig({this.channelId, this.producerId, this.deviceId});
}

class CsCoreApiAuthenticationConfig {
  String userToken;
  String managedUserToken;
  String bearerToken;

  CsCoreApiAuthenticationConfig(
      {this.userToken, this.managedUserToken, this.bearerToken});
}

class CsCoreApiConfig {
  String host;
  CsCoreApiAuthenticationConfig authentication;

  CsCoreApiConfig({@required this.host, @required this.authentication});
}

class CsCoreConfig {
  CsCoreGlobalConfig global;
  CsCoreApiConfig api;

  CsCoreConfig({@required this.global, @required this.api});
}

class CsServicesConfig {
  CsFrameworkServiceConfig frameworkServiceConfig;

  CsServicesConfig({this.frameworkServiceConfig});
}

class CsFrameworkServiceConfig {
  String frameworkApiPath;
  String channelApiPath;

  CsFrameworkServiceConfig(
      {@required this.frameworkApiPath, @required this.channelApiPath});
}

class CsConfig {
  CsCoreConfig core;
  CsServicesConfig services;

  CsConfig({@required this.core, @required this.services});
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
