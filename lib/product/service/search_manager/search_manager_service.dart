import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_movieapp/product/utility/constants/enums/environment_enums.dart';
import 'package:vexana/vexana.dart';

final class SearchManagerService extends NetworkManager<EmptyModel>{
  SearchManagerService.search() : super(
    options: BaseOptions(baseUrl: AppEnvironmentEnums.baseUrl.value,)
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