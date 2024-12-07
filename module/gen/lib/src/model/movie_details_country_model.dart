import 'package:equatable/equatable.dart';
import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_details_country_model.g.dart';

@JsonSerializable()

class ProductionCountries extends INetworkModel<ProductionCountries> with EquatableMixin{
  factory ProductionCountries.fromJson(Map<String, dynamic> json) =>
      _$ProductionCountriesFromJson(json);
  String? iso31661;
  String? name;

  ProductionCountries({this.iso31661, this.name});

  @override
  ProductionCountries fromJson(Map<String, dynamic> json) =>
      _$ProductionCountriesFromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$ProductionCountriesToJson(this);
  
  @override
  // TODO: implement props
  List<Object?> get props => [iso31661,name];
}