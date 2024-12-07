import 'package:equatable/equatable.dart';
import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_details_genres_model.g.dart';

@JsonSerializable()
class Genres extends INetworkModel<Genres> with EquatableMixin{
  factory Genres.fromJson(Map<String, dynamic> json) =>
      _$GenresFromJson(json);
  int? id;
  String? name;

  Genres({this.id, this.name});
  
  @override
  Genres fromJson(Map<String, dynamic> json) => _$GenresFromJson(json);
  
  @override
  Map<String, dynamic>? toJson() => _$GenresToJson(this);
  
  @override
  // TODO: implement props
  List<Object?> get props => [id,name];
}