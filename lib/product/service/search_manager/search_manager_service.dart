import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_movieapp/product/utility/constants/enums/environment_enums.dart';
import 'package:vexana/vexana.dart';

final class SearchManagerService extends NetworkManager<EmptyModel>{
  SearchManagerService.search() : super(
    options: BaseOptions(baseUrl: AppEnvironmentEnums.baseUrl.value, headers: {'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2ZDU5MDA2NmE0MzRkODZjNjYxYjRlYTA3ZmE2MThlOCIsIm5iZiI6MTczMjQ0NjI5MS4zOTM4MDMxLCJzdWIiOiI2NzQzMDM0YzgzMTU4YjBiMjY0N2JiYjQiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.LKYwzDJP9d5Ox-G5dPdTMVhRsTejaUjIYri0s4hGP7A'})
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