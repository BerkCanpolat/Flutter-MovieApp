import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_movieapp/product/init/app_environment.dart';
import 'package:flutter_movieapp/product/state/app_get_it.dart';
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
  AppGetIt.setupGetIt();
}
}