import 'package:gen/gen.dart';

final class AppEnvironment {
  AppEnvironment.setup({required AppConfiguration configApp}) {
    config = configApp;
  }

  AppEnvironment.general() {
    config = DevEnv();
  }


  static late final AppConfiguration config;
}