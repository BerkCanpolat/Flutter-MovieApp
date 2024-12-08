import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movieapp/product/init/language/locale_keys.g.dart';
import 'package:flutter_movieapp/product/state/language_bloc/lang_bloc.dart';
import 'package:flutter_movieapp/product/state/language_bloc/lang_state.dart';

typedef OnItemTapped = void Function(int)?;

final class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    required this.pageIndex,
    super.key,
    this.onItemTapped,
  });
  final OnItemTapped onItemTapped;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        return BottomNavigationBar(
          onTap: onItemTapped,
          currentIndex: pageIndex,
          items: [
            BottomNavigationBarItem(
              label: LocaleKeys.home_bottomHome.tr(),
              icon: const Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: LocaleKeys.home_bottomSearch.tr(),
              icon: const Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: LocaleKeys.home_bottomSettings.tr(),
              icon: const Icon(Icons.settings),
            ),
          ],
        );
      },
    );
  }
}
