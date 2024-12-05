import 'package:gen/gen.dart';

abstract class MovieIservice {
  Future<MovieModel?> getMovieNowPlaying();
}