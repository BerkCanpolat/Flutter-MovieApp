import 'package:equatable/equatable.dart';
import 'package:gen/src/model/tv_series_result_model.dart';
import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tv_series_model.g.dart';

@JsonSerializable()
class TvSeriesModel extends INetworkModel<TvSeriesModel> with EquatableMixin{
  factory TvSeriesModel.fromJson(Map<String,dynamic> json) => _$TvSeriesModelFromJson(json);
  final int? page;
  final List<TvResults>? results;
  final int? totalPages;
  final int? totalResults;

  TvSeriesModel({this.page, this.results, this.totalPages, this.totalResults});
  
  @override
  TvSeriesModel fromJson(Map<String, dynamic> json) => _$TvSeriesModelFromJson(json);
  
  @override
  Map<String, dynamic>? toJson() => _$TvSeriesModelToJson(this);
  
  @override
  // TODO: implement props
  List<Object?> get props => [page,results,totalPages,totalResults];

}
