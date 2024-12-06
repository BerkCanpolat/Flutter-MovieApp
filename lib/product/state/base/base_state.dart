import 'package:flutter/material.dart';
import 'package:flutter_movieapp/product/service/manager/app_service_manager.dart';
import 'package:flutter_movieapp/product/service/search_manager/search_manager_service.dart';
import 'package:flutter_movieapp/product/state/app_get_it_read.dart';

abstract class BaseState <T extends StatefulWidget> extends State<T>{
  AppServiceManager get appServiceManagetBaseState => AppGetItRead.appServiceManager;
  SearchManagerService get searchServiceManagerBaseState => AppGetItRead.searchManagerService;
}