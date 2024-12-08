import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movieapp/feature/home/view_model/state/home_bloc_state.dart';
import 'package:flutter_movieapp/product/service/interface/movie_IService.dart';

final class HomeViewModel extends Cubit<HomeBlocState>{
  HomeViewModel({required MovieIservice movieIservice}) : _movieIservice = movieIservice ,super(const HomeBlocState(isLoading: false));
  final MovieIservice _movieIservice;

  void changeLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  Future<void> fetchMovieNowPlaying() async {
    changeLoading();
    final response = await _movieIservice.getMovieNowPlaying();
    emit(state.copyWith(movieNow: response));
    changeLoading();
  }

  Future<void> fetchTvTopRated() async {
    changeLoading();
    final response = await _movieIservice.getTvTopRated();
    emit(state.copyWith(tvSeriesModel: response));
    changeLoading();
  }

  Future<void> fetchMoviePopular() async{
    changeLoading();
    final response = await _movieIservice.getMovieTopRated();
    emit(state.copyWith(moviePopular: response));
    changeLoading();
  }
}