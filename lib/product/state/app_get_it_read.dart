import 'package:flutter_movieapp/product/service/manager/app_service_manager.dart';
import 'package:flutter_movieapp/product/service/search_manager/search_manager_service.dart';
import 'package:flutter_movieapp/product/state/app_get_it.dart';
import 'package:flutter_movieapp/product/state/theme_bloc/theme_view_model.dart';

final class AppGetItRead {
  const AppGetItRead._();

  static AppServiceManager get appServiceManager => AppGetIt.read<AppServiceManager>();
  static SearchManagerService get searchManagerService => AppGetIt.read<SearchManagerService>();
  static ThemeViewModel get themeViewModel => AppGetIt.read<ThemeViewModel>();
}