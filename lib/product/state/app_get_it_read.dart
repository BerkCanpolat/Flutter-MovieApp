import 'package:flutter_movieapp/product/service/manager/app_service_manager.dart';
import 'package:flutter_movieapp/product/state/app_get_it.dart';

final class AppGetItRead {
  const AppGetItRead._();

  static AppServiceManager get appServiceManager => AppGetIt.read<AppServiceManager>();
}