import 'package:equatable/equatable.dart';
import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_now_playing_results.g.dart';

@JsonSerializable()
class Results extends INetworkModel<Results> with EquatableMixin {
  final bool? adult;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  final List<int>? genreIds;
  final int? id;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final String? releaseDate;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  Results(
      {this.adult,
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.releaseDate,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount});

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);

  @override
  Results fromJson(Map<String, dynamic> json) {
    return _$ResultsFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() => _$ResultsToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [
        adult,
        backdropPath,
        genreIds,
        id,
        originalLanguage,
        originalTitle,
        overview,
        popularity,
        posterPath,
        releaseDate,
        title,
        video,
        voteAverage,
        voteCount,
      ];
}
