// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_series_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TvResults _$TvResultsFromJson(Map<String, dynamic> json) => TvResults(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      genreIds: (json['genreIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      id: (json['id'] as num?)?.toInt(),
      originCountry: (json['originCountry'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      originalLanguage: json['originalLanguage'] as String?,
      originalName: json['originalName'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['posterPath'] as String?,
      firstAirDate: json['firstAirDate'] as String?,
      name: json['name'] as String?,
      voteAverage: (json['voteAverage'] as num?)?.toDouble(),
      voteCount: (json['voteCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TvResultsToJson(TvResults instance) => <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genreIds': instance.genreIds,
      'id': instance.id,
      'originCountry': instance.originCountry,
      'originalLanguage': instance.originalLanguage,
      'originalName': instance.originalName,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'posterPath': instance.posterPath,
      'firstAirDate': instance.firstAirDate,
      'name': instance.name,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
    };
