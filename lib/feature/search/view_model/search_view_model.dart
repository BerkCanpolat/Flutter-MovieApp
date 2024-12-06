import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movieapp/feature/search/view_model/state/search_bloc_state.dart';
import 'package:flutter_movieapp/product/service/interface/search_IService.dart';

final class SearchViewModel extends Cubit<SearchBlocState>{
  SearchViewModel(SearchIservice searchIservice) : _searchIservice = searchIservice ,super(const SearchBlocState(isLoading: false));

  final SearchIservice _searchIservice;


  void searchLoadingChange() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  Future<void> searchGetBloc(String text) async {
    searchLoadingChange();
    final response = await _searchIservice.getSearch(text);
    emit(state.copyWith(searchMovieModel: response));
    searchLoadingChange();
  }
}