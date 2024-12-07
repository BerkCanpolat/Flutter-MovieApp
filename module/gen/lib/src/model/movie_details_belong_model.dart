import 'package:equatable/equatable.dart';
import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_details_belong_model.g.dart';

@JsonSerializable()
class BelongsToCollection extends INetworkModel<BelongsToCollection> with EquatableMixin{
  factory BelongsToCollection.fromJson(Map<String, dynamic> json) =>
      _$BelongsToCollectionFromJson(json);
  int? id;
  String? name;
  String? posterPath;
  String? backdropPath;

  BelongsToCollection({this.id, this.name, this.posterPath, this.backdropPath});
  
  @override
  BelongsToCollection fromJson(Map<String, dynamic> json) => _$BelongsToCollectionFromJson(json);
  
  @override
  Map<String, dynamic>? toJson() => _$BelongsToCollectionToJson(this);
  
  @override
  // TODO: implement props
  List<Object?> get props => [id,name,posterPath,backdropPath];
}