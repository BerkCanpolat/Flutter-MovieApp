import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'movie_recom_result_model.g.dart';

@JsonSerializable()
class MovieRecomResults extends INetworkModel<MovieRecomResults> with EquatableMixin{
  factory MovieRecomResults.fromJson(Map<String,dynamic> json) => _$MovieRecomResultsFromJson(json);
  String? backdropPath;
  int? id;
  String? title;
  String? originalTitle;
  String? overview;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  String? mediaType;
  bool? adult;
  String? originalLanguage;
  List<int>? genreIds;
  double? popularity;
  String? releaseDate;
  bool? video;
  double? voteAverage;
  int? voteCount;

  MovieRecomResults(
      {this.backdropPath,
      this.id,
      this.title,
      this.originalTitle,
      this.overview,
      this.posterPath,
      this.mediaType,
      this.adult,
      this.originalLanguage,
      this.genreIds,
      this.popularity,
      this.releaseDate,
      this.video,
      this.voteAverage,
      this.voteCount});
      
        @override
        MovieRecomResults fromJson(Map<String, dynamic> json) => _$MovieRecomResultsFromJson(json);
      
        @override
        Map<String, dynamic>? toJson() => _$MovieRecomResultsToJson(this);
        
          @override
          // TODO: implement props
          List<Object?> get props => [
            backdropPath,
            id,
            title,
            originalTitle,
            overview,
            posterPath,
            mediaType,
            adult,
            originalLanguage,
            genreIds,
            popularity,
            releaseDate,
            video,
            voteAverage,
            voteCount
          ];
}