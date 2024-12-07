import 'package:flutter_movieapp/feature/details/view/details_view.dart';
import 'package:flutter_movieapp/feature/details/view_model/details_view_model.dart';
import 'package:flutter_movieapp/product/service/manager/app_network_error_manager.dart';
import 'package:flutter_movieapp/product/service/movie_service/movie_get_service.dart';
import 'package:flutter_movieapp/product/state/app_get_it_read.dart';
import 'package:flutter_movieapp/product/state/base/base_state.dart';

mixin DetailsMixin on BaseState<DetailsView>{
  late final AppNetworkErrorManager _errorManager;
  late final DetailsViewModel _viewModel;

  DetailsViewModel get detailsModel => _viewModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _errorManager = AppNetworkErrorManager(context);
    
    AppGetItRead.appServiceManager.managerError(onErrorStatus: _errorManager.hanleError);

    _viewModel = DetailsViewModel(movieService: MovieGetService(appServiceManagetBaseState))
    ..fetchMovieDetails(widget.id)
    ..fetchMovieRecom(widget.id);

  }
}