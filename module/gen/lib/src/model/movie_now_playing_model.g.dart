// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_now_playing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieNowPlayingModel _$MovieNowPlayingModelFromJson(
        Map<String, dynamic> json) =>
    MovieNowPlayingModel(
      dates: json['dates'] == null
          ? null
          : Dates.fromJson(json['dates'] as Map<String, dynamic>),
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      totalResults: (json['totalResults'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MovieNowPlayingModelToJson(
        MovieNowPlayingModel instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'results': instance.results,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
    };
