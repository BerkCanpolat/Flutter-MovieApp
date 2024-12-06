import 'package:equatable/equatable.dart';
import 'package:gen/gen.dart';

final class SearchBlocState extends Equatable{
  final bool isLoading;
  final SearchMovieModel? searchMovieModel;
  final MovieModel? movieModel;

  const SearchBlocState({required this.isLoading, this.searchMovieModel, this.movieModel});

  SearchBlocState copyWith({
    bool? isLoading,
    SearchMovieModel? searchMovieModel,
    MovieModel? movieModel
  }) {
    return SearchBlocState(
      isLoading: isLoading ?? this.isLoading,
      searchMovieModel: searchMovieModel ?? this.searchMovieModel,
      movieModel: movieModel ?? this.movieModel
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [isLoading,searchMovieModel,movieModel];
}