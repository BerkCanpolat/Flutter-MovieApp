import 'package:equatable/equatable.dart';
import 'package:gen/gen.dart';

final class SearchBlocState extends Equatable{
  final bool isLoading;
  final SearchMovieModel? searchMovieModel;

  const SearchBlocState({required this.isLoading, this.searchMovieModel});

  SearchBlocState copyWith({
    bool? isLoading,
    SearchMovieModel? searchMovieModel
  }) {
    return SearchBlocState(
      isLoading: isLoading ?? this.isLoading,
      searchMovieModel: searchMovieModel ?? this.searchMovieModel
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [isLoading,searchMovieModel];
}