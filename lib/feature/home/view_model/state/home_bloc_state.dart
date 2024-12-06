import 'package:equatable/equatable.dart';
import 'package:gen/gen.dart';

final class HomeBlocState extends Equatable{
  final bool isLoading;
  final MovieModel? movieNow;
  final MovieModel? movieTopRated;
  final TvSeriesModel? tvSeriesModel;

  const HomeBlocState({required this.isLoading, this.movieNow, this.tvSeriesModel, this.movieTopRated});

  HomeBlocState copyWith({
    bool? isLoading,
    MovieModel? movieNow,
    TvSeriesModel? tvSeriesModel,
    MovieModel? moviePopular
  }) {
    return HomeBlocState(
      isLoading: isLoading ?? this.isLoading,
      movieNow: movieNow ?? this.movieNow,
      tvSeriesModel: tvSeriesModel ?? this.tvSeriesModel,
      movieTopRated: moviePopular ?? this.movieTopRated
    );

  }
  @override
  // TODO: implement props
  List<Object?> get props => [isLoading, movieNow, tvSeriesModel, movieTopRated];
}