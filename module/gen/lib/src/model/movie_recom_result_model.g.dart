// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_recom_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovieRecomResults _$MovieRecomResultsFromJson(Map<String, dynamic> json) =>
    MovieRecomResults(
      backdropPath: json['backdropPath'] as String?,
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      originalTitle: json['originalTitle'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      mediaType: json['mediaType'] as String?,
      adult: json['adult'] as bool?,
      originalLanguage: json['originalLanguage'] as String?,
      genreIds: (json['genreIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      popularity: (json['popularity'] as num?)?.toDouble(),
      releaseDate: json['releaseDate'] as String?,
      video: json['video'] as bool?,
      voteAverage: (json['voteAverage'] as num?)?.toDouble(),
      voteCount: (json['voteCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MovieRecomResultsToJson(MovieRecomResults instance) =>
    <String, dynamic>{
      'backdropPath': instance.backdropPath,
      'id': instance.id,
      'title': instance.title,
      'originalTitle': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'mediaType': instance.mediaType,
      'adult': instance.adult,
      'originalLanguage': instance.originalLanguage,
      'genreIds': instance.genreIds,
      'popularity': instance.popularity,
      'releaseDate': instance.releaseDate,
      'video': instance.video,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
    };
