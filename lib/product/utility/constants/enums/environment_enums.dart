import 'package:flutter_movieapp/product/init/app_environment.dart';

enum AppEnvironmentEnums {
  baseUrl,
  apiKey;

  String get value {
    try {
      switch(this) {
        case AppEnvironmentEnums.baseUrl:
          return AppEnvironment.config.baseUrl;
        case AppEnvironmentEnums.apiKey:
          return AppEnvironment.config.apiKey;
      }
    } catch (e) {
      throw Exception("Appenvironment Başlatılamadı $e");
    }
  }
}