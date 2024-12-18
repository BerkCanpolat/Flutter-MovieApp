import 'package:flutter_movieapp/product/service/manager/app_service_manager.dart';
import 'package:flutter_movieapp/product/service/search_manager/search_manager_service.dart';
import 'package:flutter_movieapp/product/state/theme_bloc/theme_view_model.dart';
import 'package:get_it/get_it.dart';

final class AppGetIt {
  const AppGetIt._();

  static final _getIt = GetIt.I;

  static void setupGetIt() {
    _getIt.registerSingleton<AppServiceManager>(AppServiceManager.base());
    _getIt.registerSingleton<SearchManagerService>(SearchManagerService.search());
    _getIt.registerLazySingleton<ThemeViewModel>(ThemeViewModel.new);
  }

  static T read<T extends Object>() => _getIt<T>();
}