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
    print("BLOCDA HATA MEYDANA GELDİ");
    final response = await _movieIservice.getMovieNowPlaying();
    emit(state.copyWith(movieNow: response));
    print("New State: ${state.movieNow}");
    changeLoading();
  }
}