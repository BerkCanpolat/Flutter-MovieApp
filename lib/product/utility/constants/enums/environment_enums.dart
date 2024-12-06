import 'package:flutter_movieapp/product/init/app_environment.dart';

enum AppEnvironmentEnums {
  baseUrl,
  searchApi,
  apiKey;

  String get value {
    try {
      switch(this) {
        case AppEnvironmentEnums.baseUrl:
          return AppEnvironment.config.baseUrl;
        case AppEnvironmentEnums.apiKey:
          return AppEnvironment.config.apiKey;
        case AppEnvironmentEnums.searchApi:
          return AppEnvironment.config.searchApi;
      }
    } catch (e) {
      throw Exception("Appenvironment Başlatılamadı $e");
    }
  }
}