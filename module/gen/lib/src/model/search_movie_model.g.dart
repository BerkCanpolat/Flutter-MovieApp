// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchMovieModel _$SearchMovieModelFromJson(Map<String, dynamic> json) =>
    SearchMovieModel(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => SearchResultsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      totalResults: (json['totalResults'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SearchMovieModelToJson(SearchMovieModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'totalPages': instance.totalPages,
      'totalResults': instance.totalResults,
    };
