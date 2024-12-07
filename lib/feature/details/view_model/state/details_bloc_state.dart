import 'package:equatable/equatable.dart';
import 'package:gen/gen.dart';

final class DetailsBlocState extends Equatable{
  final bool isLoading;
  final MovieDetailed? movieDetailed;
  final MovieRecommendation? movieRecom;

  const DetailsBlocState({required this.isLoading, this.movieDetailed, this.movieRecom});

  DetailsBlocState copyWith({
    bool? isLoading,
    MovieDetailed? movieDetailed,
    MovieRecommendation? movieRecom
  }) {
    return DetailsBlocState(
      isLoading: isLoading ?? this.isLoading,
      movieDetailed: movieDetailed ?? this.movieDetailed,
      movieRecom: movieRecom ?? this.movieRecom
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [isLoading,movieDetailed,movieRecom];
}