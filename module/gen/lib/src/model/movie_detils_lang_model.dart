import 'package:equatable/equatable.dart';
import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_detils_lang_model.g.dart';

@JsonSerializable()

class SpokenLanguages extends INetworkModel<SpokenLanguages> with EquatableMixin{
  factory SpokenLanguages.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguagesFromJson(json);
  String? englishName;
  String? iso6391;
  String? name;

  SpokenLanguages({this.englishName, this.iso6391, this.name});

  @override
  SpokenLanguages fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguagesFromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$SpokenLanguagesToJson(this);
  
  @override
  // TODO: implement props
  List<Object?> get props => [englishName,iso6391,name];
}