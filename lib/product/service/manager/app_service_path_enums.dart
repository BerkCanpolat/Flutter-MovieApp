enum AppServicePathEnums {
  nowPlaying('movie/now_playing'),
  movieTopRated('movie/top_rated'),
  movieSearch('search/movie'),
  tvTopRated('tv/top_rated');

  final String value;
  const AppServicePathEnums(this.value);

  String withQuery() {
    return '${this.value}/value';
  }
}