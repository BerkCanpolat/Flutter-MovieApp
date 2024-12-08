import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movieapp/product/init/language/locale_keys.g.dart';
import 'package:flutter_movieapp/product/init/movie_localization.dart';
import 'package:flutter_movieapp/product/init/theme/custom_dark_theme.dart';
import 'package:flutter_movieapp/product/init/theme/custom_light_theme.dart';
import 'package:flutter_movieapp/product/state/base/base_state.dart';
import 'package:flutter_movieapp/product/state/language_bloc/lang_bloc.dart';
import 'package:flutter_movieapp/product/state/language_bloc/lang_state.dart';
import 'package:flutter_movieapp/product/state/theme_bloc/theme_state.dart';
import 'package:flutter_movieapp/product/state/theme_bloc/theme_view_model.dart';
import 'package:flutter_movieapp/product/utility/constants/enums/locales_enums.dart';
import 'package:gen/gen.dart';

@RoutePage()
class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends BaseState<SettingView> {
  bool isDarkMode = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                BlocBuilder<ThemeViewModel, ThemeState>(
                  builder: (context, state) {
                    bool isDarkMode =
                        state.themeData == CustomDarkTheme().themeData;
                    return Container(
                      height: 100,
                      width: 100,
                      child: Card(
                        color: isDarkMode ? Colors.blueAccent : Colors.grey[900],
                        child: GestureDetector(
                          onTap: () {
                            themeViewModel.changeThemeMode(isDarkMode
                                ? CustomLightTheme().themeData
                                : CustomDarkTheme().themeData);
                          },
                          child: AnimatedSwitcher(
                              duration: const Duration(seconds: 1),
                              transitionBuilder: (child, animation) {
                                return FadeTransition(
                                  opacity: animation,
                                  child: child,
                                );
                              },
                              child: isDarkMode
                                  ? Assets.lotties.sun
                                      .lottie(package: 'gen')
                                  : Assets.lotties.moon
                                      .lottie(package: 'gen')),
                        ),
                      ),
                    );
                  },
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    child: Card(
                      color: Colors.white30,
                      child:
                          Center(child: BlocBuilder<LanguageCubit, LanguageState>(
                        builder: (context, state) {
                          return Text(
                            LocaleKeys.settings_themeChange.tr(),
                            style: Theme.of(context).textTheme.labelLarge,
                          );
                        },
                      )),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                BlocBuilder<LanguageCubit, LanguageState>(
                  builder: (context, state) {
                    bool isEnglish = state.locale.languageCode == 'en';
                    return Container(
                      height: 100,
                      width: 100,
                      child: Card(
                        //color: isEnglish ? Colors.green : Colors.grey[900],
                        child: GestureDetector(
                          onTap: () {
                            final newLocale = isEnglish
                            ? LocalesEnums.tr
                            : LocalesEnums.en;
                            MovieLocalization.updateLanguage(context: context, value: newLocale);
                            context.read<LanguageCubit>().updateLanguage(newLocale);
                          },
                          child: AnimatedSwitcher(
                            duration: const Duration(seconds: 1),
                            transitionBuilder: (child, animation) {
                              return FadeTransition(opacity: animation, child: child,);
                            },
                            child: isEnglish ? Assets.lotties.us.lottie(package: 'gen') : Assets.lotties.tr.lottie(package: 'gen'),
                          ),
                        ),
                      ),
                    );
                  },
                 ),
                 Expanded(
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    child: Card(
                      color: Colors.white30,
                      child:
                          Center(child: BlocBuilder<LanguageCubit, LanguageState>(
                        builder: (context, state) {
                          return Text(
                            LocaleKeys.settings_language.tr(),
                            style: Theme.of(context).textTheme.labelLarge,
                          );
                        },
                      )),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
