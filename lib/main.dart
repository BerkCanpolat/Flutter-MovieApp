import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movieapp/product/init/app_initialized.dart';
import 'package:flutter_movieapp/product/init/movie_localization.dart';
import 'package:flutter_movieapp/product/init/state_initialize.dart';
import 'package:flutter_movieapp/product/navigator/app_router.dart';
import 'package:flutter_movieapp/product/state/theme_bloc/theme_view_model.dart';

Future<void> main() async {
  await AppInitialized().make();
  runApp(MovieLocalization(child: const StateInitialize(child: MyApp())));
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
      theme: context.watch<ThemeViewModel>().state.themeData,
      routerConfig: _appRouter.config(),
    );
  }
}