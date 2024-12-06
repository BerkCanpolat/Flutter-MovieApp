import 'package:equatable/equatable.dart';
import 'package:gen/src/model/search_movie_result_model.dart';
import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_movie_model.g.dart';

@JsonSerializable()
class SearchMovieModel extends INetworkModel<SearchMovieModel> with EquatableMixin{
  factory SearchMovieModel.fromJson(Map<String,dynamic> json) => _$SearchMovieModelFromJson(json);
  final int? page;
  final List<SearchResultsModel>? results;
  final int? totalPages;
  final int? totalResults;

  SearchMovieModel(
      {this.page, this.results, this.totalPages, this.totalResults});
      
        @override
        SearchMovieModel fromJson(Map<String, dynamic> json) => _$SearchMovieModelFromJson(json);
      
        @override
        Map<String, dynamic>? toJson() => _$SearchMovieModelToJson(this);
        
          @override
          // TODO: implement props
          List<Object?> get props => [page,results,totalPages,totalResults];
}
