import 'package:gen/gen.dart';

abstract class SearchIservice {
  Future<SearchMovieModel?> getSearch(String text);
}