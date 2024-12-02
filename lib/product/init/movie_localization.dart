import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movieapp/product/utility/constants/enums/locales_enums.dart';

final class MovieLocalization extends EasyLocalization{
  MovieLocalization({
    required super.child, super.key
  }) : super(
    supportedLocales: _supportedLocales,
    path: _path,
    useOnlyLangCode: true
  );

  static final List<Locale> _supportedLocales = [
    LocalesEnums.tr.locale,
    LocalesEnums.en.locale
  ];

  static const String _path = "assets/translations";

  static Future<void> updateLanguage({
    required BuildContext context,
    required LocalesEnums value
  }) => context.setLocale(value.locale);
}