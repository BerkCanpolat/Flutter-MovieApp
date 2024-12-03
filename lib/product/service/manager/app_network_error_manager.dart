import 'dart:io';

import 'package:flutter/material.dart';

final class AppNetworkErrorManager {
  final BuildContext context;

  AppNetworkErrorManager(this.context);

  void hanleError(int value) {
    if(value == HttpStatus.unauthorized) {}
  }
}