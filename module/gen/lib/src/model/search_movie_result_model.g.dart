// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_movie_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultsModel _$SearchResultsModelFromJson(Map<String, dynamic> json) =>
    SearchResultsModel(
      adult: json['adult'] as bool?,
      backdropPath: json['backdrop_path'] as String?,
      genreIds: (json['genreIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      id: (json['id'] as num?)?.toInt(),
      originalLanguage: json['originalLanguage'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      releaseDate: json['releaseDate'] as String?,
      title: json['title'] as String?,
      video: json['video'] as bool?,
      voteAverage: (json['voteAverage'] as num?)?.toDouble(),
      voteCount: (json['voteCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SearchResultsModelToJson(SearchResultsModel instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genreIds': instance.genreIds,
      'id': instance.id,
      'originalLanguage': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'releaseDate': instance.releaseDate,
      'title': instance.title,
      'video': instance.video,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
    };
