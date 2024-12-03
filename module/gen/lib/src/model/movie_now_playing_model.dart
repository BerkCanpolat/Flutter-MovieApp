import 'package:equatable/equatable.dart';
import 'package:gen/src/model/movie_now_playing_date_model.dart';
import 'package:gen/src/model/movie_now_playing_results.dart';
import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_now_playing_model.g.dart';

@JsonSerializable()
class MovieNowPlayingModel extends INetworkModel<MovieNowPlayingModel>
    with EquatableMixin {
  final Dates? dates;
  final int? page;
  final List<Results>? results;
  final int? totalPages;
  final int? totalResults;

  MovieNowPlayingModel(
      {this.dates,
      this.page,
      this.results,
      this.totalPages,
      this.totalResults});

  factory MovieNowPlayingModel.fromJson(Map<String, dynamic> json) =>
      _$MovieNowPlayingModelFromJson(json);

  @override
  MovieNowPlayingModel fromJson(Map<String, dynamic> json) {
    return _$MovieNowPlayingModelFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() => _$MovieNowPlayingModelToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [dates, page, results, totalPages, totalResults];
}
