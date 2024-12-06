import 'package:equatable/equatable.dart';
import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tv_series_result_model.g.dart';

@JsonSerializable()
class TvResults extends INetworkModel<TvResults> with EquatableMixin {
  factory TvResults.fromJson(Map<String, dynamic> json) =>
      _$TvResultsFromJson(json);
  final bool? adult;
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  final List<int>? genreIds;
  final int? id;
  final List<String>? originCountry;
  final String? originalLanguage;
  final String? originalName;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final String? firstAirDate;
  final String? name;
  final double? voteAverage;
  final int? voteCount;

  TvResults(
      {this.adult,
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originCountry,
      this.originalLanguage,
      this.originalName,
      this.overview,
      this.popularity,
      this.posterPath,
      this.firstAirDate,
      this.name,
      this.voteAverage,
      this.voteCount});

  @override
  TvResults fromJson(Map<String, dynamic> json) => _$TvResultsFromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$TvResultsToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [
        adult,
        backdropPath,
        genreIds,
        id,
        originCountry,
        originalLanguage,
        originalName,
        overview,
        popularity,
        posterPath,
        firstAirDate,
        name,
        voteAverage,
        voteAverage,
      ];
}
