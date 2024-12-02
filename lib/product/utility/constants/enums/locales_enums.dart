import 'package:flutter/material.dart';

enum LocalesEnums {
  tr(Locale('tr', 'TR')),
  en(Locale('en', 'US'));

  final Locale locale;

  const LocalesEnums(this.locale);
}