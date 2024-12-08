import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_movieapp/product/init/theme/custom_color_scheme.dart';
import 'package:flutter_movieapp/product/init/theme/custom_theme.dart';

final class CustomDarkTheme implements CustomTheme{
  @override
  // TODO: implement themeData
  ThemeData get themeData => ThemeData(
    colorScheme: CustomColorScheme.darkColorScheme,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light
      )
    ),
    textTheme: const TextTheme(
      labelLarge: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 18,
      ),
      headlineSmall: TextStyle(
        fontSize: 17,
        color: Colors.white
      ),
      titleMedium: TextStyle(
        fontSize: 18,
      ))
  );
}