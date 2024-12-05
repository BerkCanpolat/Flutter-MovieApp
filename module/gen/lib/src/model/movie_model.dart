import 'package:equatable/equatable.dart';
import 'package:gen/src/model/movie_date_model.dart';
import 'package:gen/src/model/movie_results_model.dart';
import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel extends INetworkModel<MovieModel>
    with EquatableMixin {
  final Dates? dates;
  final int? page;
  final List<Results>? results;
  final int? totalPages;
  final int? totalResults;

  MovieModel(
      {this.dates,
      this.page,
      this.results,
      this.totalPages,
      this.totalResults});

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
       _$MovieModelFromJson(json);

  @override
  MovieModel fromJson(Map<String, dynamic> json) {
    return _$MovieModelFromJson(json);
  }

  @override
  Map<String, dynamic>? toJson() => _$MovieModelToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [dates, page, results, totalPages, totalResults];
}
