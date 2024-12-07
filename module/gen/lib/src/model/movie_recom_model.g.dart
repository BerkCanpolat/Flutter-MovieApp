// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_recom_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieRecommendation _$MovieRecommendationFromJson(Map<String, dynamic> json) =>
    MovieRecommendation(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => MovieRecomResults.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      totalResults: (json['totalResults'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MovieRecommendationToJson(
        MovieRecommendation instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
    };
