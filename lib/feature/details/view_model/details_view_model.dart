import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movieapp/feature/details/view_model/state/details_bloc_state.dart';
import 'package:flutter_movieapp/product/service/interface/movie_IService.dart';

final class DetailsViewModel extends Cubit<DetailsBlocState>{
  DetailsViewModel({required MovieIservice movieService}) : _movieIservice = movieService ,super(const DetailsBlocState(isLoading: false));

  final MovieIservice _movieIservice;

  void changeLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  Future<void> fetchMovieDetails(int id) async {
    changeLoading();
    final response = await _movieIservice.getMovieDetails(id);
    emit(state.copyWith(movieDetailed: response));
    changeLoading();
  }

  Future<void> fetchMovieRecom(int id) async {
    changeLoading();
    final response = await _movieIservice.getMovieRecom(id);
    emit(state.copyWith(movieRecom: response));
    changeLoading();
  }
}