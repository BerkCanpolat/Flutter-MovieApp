import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movieapp/product/init/theme/custom_dark_theme.dart';
import 'package:flutter_movieapp/product/init/theme/custom_light_theme.dart';
import 'package:flutter_movieapp/product/state/base/base_state.dart';

@RoutePage()
class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends BaseState<SettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: IconButton(onPressed: (){
            themeViewModel.changeThemeMode(CustomLightTheme().themeData);
          }, icon: Icon(Icons.add)))
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){themeViewModel.changeThemeMode(CustomDarkTheme().themeData);}),
    );
  }
}