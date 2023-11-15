import 'package:json_annotation/json_annotation.dart';

part 'movie_entity.g.dart';

@JsonSerializable()
class UpcomingMovies {
  UpcomingMovies({
    required this.results,
  });

  List<MovieEntity> results;

  factory UpcomingMovies.fromJson(Map<String, dynamic> json) =>
      _$UpcomingMoviesFromJson(json);
}

@JsonSerializable()
class MovieEntity {
  MovieEntity({
    required this.id,
    required this.resultId,
    required this.primaryImage,
    required this.titleType,
    required this.titleText,
    required this.originalTitleText,
    required this.releaseYear,
    required this.releaseDate,
  });
  String id;
  String resultId;
  PrimaryImage? primaryImage;
  TitleType titleType;
  TitleText titleText;
  TitleText originalTitleText;
  ReleaseYear releaseYear;
  ReleaseDate releaseDate;

  factory UpcomingMovies.fromJson(Map<String, dynamic> json) =>
      _$UpcomingMoviesFromJson(json);
}

@JsonSerializable()
class TitleText {
  TitleText({
    required this.text,
  });

  String text;

  factory UpcomingMovies.fromJson(Map<String, dynamic> json) =>
      _$UpcomingMoviesFromJson(json);
}

@JsonSerializable()
class PrimaryImage {
  PrimaryImage({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
    required this.caption,
  });

  String id;
  int width;
  int height;
  String url;
  Caption caption;

  factory UpcomingMovies.fromJson(Map<String, dynamic> json) =>
      _$UpcomingMoviesFromJson(json);
}

@JsonSerializable()
class Caption {
  Caption({
    required this.plainText,
  });

  String plainText;

  factory UpcomingMovies.fromJson(Map<String, dynamic> json) =>
      _$UpcomingMoviesFromJson(json);
}

@JsonSerializable()
class ReleaseDate {
  ReleaseDate({
    required this.day,
    required this.month,
    required this.year,
  });

  int day;
  int month;
  int year;

  factory UpcomingMovies.fromJson(Map<String, dynamic> json) =>
      _$UpcomingMoviesFromJson(json);
}

@JsonSerializable()
class ReleaseYear {
  ReleaseYear({
    required this.year,
    required this.endYear,
  });

  int year;
  dynamic endYear;

  factory UpcomingMovies.fromJson(Map<String, dynamic> json) =>
      _$UpcomingMoviesFromJson(json);
}

@JsonSerializable()
class TitleType {
  TitleType({
    required this.isSeries,
    required this.isEpisode,
    required this.categories,
    required this.canHaveEpisodes,
  });

  bool isSeries;
  bool isEpisode;
  List<Category> categories;
  bool canHaveEpisodes;

  factory UpcomingMovies.fromJson(Map<String, dynamic> json) =>
      _$UpcomingMoviesFromJson(json);
}

@JsonSerializable()
class Category {
  Category({
    required this.value,
  });

  String value;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
