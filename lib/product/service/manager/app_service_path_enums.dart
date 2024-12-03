enum AppServicePathEnums {
  nowPlaying('movie/now_playing');

  final String value;
  const AppServicePathEnums(this.value);

  String withQuery() {
    return '${this.value}/value';
  }
}