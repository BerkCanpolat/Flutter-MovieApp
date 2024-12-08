import 'package:flutter/material.dart';
import 'package:flutter_movieapp/product/init/theme/custom_color_scheme.dart';
import 'package:flutter_movieapp/product/init/theme/custom_theme.dart';

final class CustomDarkTheme implements CustomTheme{
  @override
  // TODO: implement themeData
  ThemeData get themeData => ThemeData(
    useMaterial3: true,
    colorScheme: CustomColorScheme.darkColorScheme,
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