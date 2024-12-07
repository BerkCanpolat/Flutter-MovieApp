import 'package:equatable/equatable.dart';
import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_details_product_model.g.dart';

@JsonSerializable()

class ProductionCompanies extends INetworkModel<ProductionCompanies> with EquatableMixin{
  factory ProductionCompanies.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompaniesFromJson(json);
  int? id;
  String? logoPath;
  String? name;
  String? originCountry;

  ProductionCompanies({this.id, this.logoPath, this.name, this.originCountry});

  @override
  ProductionCompanies fromJson(Map<String, dynamic> json) =>
      _$ProductionCompaniesFromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$ProductionCompaniesToJson(this);
  
  @override
  // TODO: implement props
  List<Object?> get props => [id,logoPath,name,originCountry];
}