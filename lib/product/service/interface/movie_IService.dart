import 'package:gen/gen.dart';

abstract class MovieIservice {
  Future<MovieModel?> getMovieNowPlaying();
  Future<TvSeriesModel?> getTvTopRated();
  Future<MovieModel?> getMovieTopRated();
  Future<MovieDetailed?> getMovieDetails(int id);
}