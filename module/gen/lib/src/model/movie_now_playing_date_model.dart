import 'package:equatable/equatable.dart';
import 'package:vexana/vexana.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie_now_playing_date_model.g.dart';

@JsonSerializable()
class Dates extends INetworkModel<Dates> with EquatableMixin{
  final String? maximum;
  final String? minimum;

  Dates({this.maximum, this.minimum});

  factory Dates.fromJson(Map<String,dynamic> json) => _$DatesFromJson(json);
  
  @override
  Dates fromJson(Map<String, dynamic> json) {
    return _$DatesFromJson(json);
  }
  
  @override
  Map<String, dynamic>? toJson() => _$DatesToJson(this);
  
  @override
  // TODO: implement props
  List<Object?> get props => [maximum,minimum];



  
}