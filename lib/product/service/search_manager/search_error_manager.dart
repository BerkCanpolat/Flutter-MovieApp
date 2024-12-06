import 'dart:io';

import 'package:flutter/material.dart';

final class SearchErrorManager {
  final BuildContext context;

  SearchErrorManager(this.context);

  void hanleError(int value) {
    if(value == HttpStatus.unauthorized) {}
  }
}