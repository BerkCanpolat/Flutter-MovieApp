import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movieapp/feature/search/view_model/state/search_bloc_state.dart';
import 'package:flutter_movieapp/product/service/interface/movie_IService.dart';
import 'package:flutter_movieapp/product/service/interface/search_IService.dart';

final class SearchViewModel extends Cubit<SearchBlocState> {
  SearchViewModel(SearchIservice searchIservice, MovieIservice iservice)
      : _iservice = iservice ,_searchIservice = searchIservice,
        super(
          const SearchBlocState(isLoading: false),
        );

  final SearchIservice _searchIservice;
  final MovieIservice _iservice;


  void searchLoadingChange() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  Future<void> searchGetBloc(String text) async {
    searchLoadingChange();
    final response = await _searchIservice.getSearch(text);
    emit(state.copyWith(searchMovieModel: response));
    searchLoadingChange();
  }

  Future<void> getSearchMovieTopRated() async{
    emit(state.copyWith(isLoading: true));
    final response = await _iservice.getMovieTopRated();
    emit(state.copyWith(movieModel: response));
    emit(state.copyWith(isLoading: false));
  }
}
