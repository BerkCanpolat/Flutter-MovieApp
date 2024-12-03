import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_movieapp/product/utility/constants/enums/environment_enums.dart';
import 'package:vexana/vexana.dart';

final class AppServiceManager extends NetworkManager<EmptyModel>{
  AppServiceManager.base() : super(
    options: BaseOptions(baseUrl: AppEnvironmentEnums.baseUrl.value, queryParameters: {"api_key": AppEnvironmentEnums.apiKey.value})
  );

  void managerError({required ValueChanged<int> onErrorStatus}) {
    interceptors.add(InterceptorsWrapper(
      onError: (error, handler) {
        onErrorStatus(error.response?.statusCode ?? HttpStatus.notFound);
        print("Error Status Code: ${error.response?.statusCode}");
        print("Error Message: ${error.response?.statusMessage}");
        handler.next(error);
      },
    ));
  }
}