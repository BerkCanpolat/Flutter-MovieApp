import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movieapp/product/init/app_initialized.dart';
import 'package:flutter_movieapp/product/init/movie_localization.dart';
import 'package:flutter_movieapp/product/init/theme/custom_light_theme.dart';
import 'package:flutter_movieapp/product/navigator/app_router.dart';

Future<void> main() async {
  await AppInitialized().make();
  runApp(MovieLocalization(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: CustomLightTheme().themeData,
      routerConfig: _appRouter.config(),
    );
  }
}