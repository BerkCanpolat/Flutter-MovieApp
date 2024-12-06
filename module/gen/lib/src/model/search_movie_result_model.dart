import 'package:equatable/equatable.dart';
import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_movie_result_model.g.dart';

@JsonSerializable()
class SearchResultsModel extends INetworkModel<SearchResultsModel>
    with EquatableMixin {
  factory SearchResultsModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResultsModelFromJson(json);
  final bool? adult;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  final List<int>? genreIds;
  final int? id;
  final String? originalLanguage;
  @JsonKey(name: 'original_title')
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  final String? releaseDate;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  SearchResultsModel(
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

  @override
  SearchResultsModel fromJson(Map<String, dynamic> json) =>
      _$SearchResultsModelFromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$SearchResultsModelToJson(this);

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
