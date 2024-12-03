import 'package:flutter_movieapp/feature/home/view/home_view.dart';
import 'package:flutter_movieapp/feature/home/view_model/home_view_model.dart';
import 'package:flutter_movieapp/product/service/manager/app_network_error_manager.dart';
import 'package:flutter_movieapp/product/service/movie_service/movie_get_service.dart';
import 'package:flutter_movieapp/product/state/app_get_it_read.dart';
import 'package:flutter_movieapp/product/state/base/base_state.dart';

mixin HomeViewMixin on BaseState<HomeView>{
  late final AppNetworkErrorManager _errorManager;
  late final HomeViewModel _homeViewModel;

  HomeViewModel get homeViewModel => _homeViewModel;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _errorManager = AppNetworkErrorManager(context);

    AppGetItRead.appServiceManager.managerError(onErrorStatus: _errorManager.hanleError);

    _homeViewModel = HomeViewModel(movieIservice: MovieGetService(appServiceManagetBaseState));

    //_homeViewModel.fetchMovieNowPlaying()
;

  }
}