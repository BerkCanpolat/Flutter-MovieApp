import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movieapp/product/init/theme/custom_light_theme.dart';
import 'package:flutter_movieapp/product/state/theme_bloc/theme_state.dart';

final class ThemeViewModel extends Cubit<ThemeState>{
  ThemeViewModel() : super(ThemeState(themeData: CustomLightTheme().themeData));

  // void changeTheme() {
  //   final currentThemeLight = state.themeData == CustomLightTheme().themeData;
  //   emit(state.copyWith(themeData: currentThemeLight ? CustomDarkTheme().themeData : CustomLightTheme().themeData));
  // }

  void changeThemeMode(ThemeData themeData) {
    emit(state.copyWith(themeData: themeData));
  }
}