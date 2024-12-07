import 'package:equatable/equatable.dart';
import 'package:gen/src/model/movie_recom_result_model.dart';
import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_recom_model.g.dart';

@JsonSerializable()
class MovieRecommendation extends INetworkModel<MovieRecommendation> with EquatableMixin{
  factory MovieRecommendation.fromJson(Map<String,dynamic> json) => _$MovieRecommendationFromJson(json);
  int? page;
  List<MovieRecomResults>? results;
  int? totalPages;
  int? totalResults;

  MovieRecommendation(
      {this.page, this.results, this.totalPages, this.totalResults});
      
        @override
        MovieRecommendation fromJson(Map<String, dynamic> json) => _$MovieRecommendationFromJson(json);
      
        @override
        Map<String, dynamic>? toJson() => _$MovieRecommendationToJson(this);
        
          @override
          // TODO: implement props
          List<Object?> get props => [page,results,totalPages,totalResults];
}
