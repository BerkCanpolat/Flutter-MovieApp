enum AppServicePathEnums {
  nowPlaying('movie/now_playing'),
  movieTopRated('movie/top_rated'),
  movieSearch('search/movie'),
  movieDetails('movie/'),
  movieRecom('movie/{id}/recommendations'),
  tvTopRated('tv/top_rated');

  final String value;
  const AppServicePathEnums(this.value);


  String withId(int id) {
    return '$value$id';
  }

  String withIdAndPath(int id) {
    return value.replaceAll('{id}', id.toString());
  }

  String withQuery() {
    return '${this.value}/value';
  }
}