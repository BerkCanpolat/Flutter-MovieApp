import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_movieapp/product/init/app_environment.dart';
import 'package:flutter_movieapp/product/service/manager/app_service_path_enums.dart';
import 'package:flutter_movieapp/product/state/app_get_it.dart';
import 'package:flutter_movieapp/product/utility/constants/enums/environment_enums.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/web.dart';

final class AppInitialized {

  Future<void> make() async{
    WidgetsFlutterBinding.ensureInitialized();
    await runZonedGuarded<Future<void>>(_initialize, (error, stack) {
      Logger().e(error);
    });
  }

  Future<void> _initialize() async{
  await EasyLocalization.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await DeviceUtility.instance.initPackageInfo();

  FlutterError.onError = (details) {
    Logger().e(details.exceptionAsString());
  };

  AppEnvironment.general();
  print(AppEnvironmentEnums.baseUrl.value);
  print(AppEnvironmentEnums.apiKey.value);
  print("Final Request URL: ${AppEnvironmentEnums.baseUrl.value}${AppServicePathEnums.nowPlaying.value}");
  print("SEARCH APİ KEY; ${AppEnvironmentEnums.searchApi.value}");
  AppGetIt.setupGetIt();
}
}