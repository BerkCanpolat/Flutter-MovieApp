import 'package:flutter/material.dart';
import 'package:flutter_movieapp/feature/search/view/search_view.dart';
import 'package:flutter_movieapp/feature/search/view_model/search_view_model.dart';
import 'package:flutter_movieapp/product/service/search_manager/search_error_manager.dart';
import 'package:flutter_movieapp/product/service/search_service/search_service.dart';
import 'package:flutter_movieapp/product/state/app_get_it_read.dart';
import 'package:flutter_movieapp/product/state/base/base_state.dart';

mixin SearchViewMixin on BaseState<SearchView>{
  TextEditingController searchController = TextEditingController();

  late final SearchErrorManager _searchErrorManager;
  late final SearchViewModel _searchViewModel;

  SearchViewModel get searchViewModel => _searchViewModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _searchErrorManager = SearchErrorManager(context);

    AppGetItRead.searchManagerService.managerError(onErrorStatus: _searchErrorManager.hanleError);

    _searchViewModel = SearchViewModel(SearchService(searchServiceManagerBaseState));
  }
}