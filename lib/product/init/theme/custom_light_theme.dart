import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter_movieapp/product/init/theme/custom_color_scheme.dart';
import 'package:flutter_movieapp/product/init/theme/custom_theme.dart';

final class CustomLightTheme implements CustomTheme{
  @override
  // TODO: implement themeData
  ThemeData get themeData => ThemeData(
    useMaterial3: true,
    colorScheme: CustomColorScheme.lightColorScheme,
    textTheme: const TextTheme(
      labelLarge: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 18
      ),
      headlineSmall: TextStyle(
        fontSize: 17
      ),
      titleMedium: TextStyle(
        fontSize: 18,
      )
    )
  );
}