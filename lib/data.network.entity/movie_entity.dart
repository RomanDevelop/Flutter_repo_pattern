class UpcomingMovies {
  List<MovieEntity> results;

  UpcomingMovies({
    required this.results,
  });

  factory UpcomingMovies.fromJson(Map<String, dynamic> json) => UpcomingMovies(
        results: List<MovieEntity>.from(
            json["results"].map((x) => MovieEntity.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class MovieEntity {
  String id;
  String resultId;
  PrimaryImage? primaryImage;
  TitleType titleType;
  TitleText titleText;
  TitleText originalTitleText;
  ReleaseYear releaseYear;
  ReleaseDate releaseDate;

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

  factory MovieEntity.fromJson(Map<String, dynamic> json) => MovieEntity(
        id: json["_id"],
        resultId: json["id"],
        primaryImage: json["primaryImage"] == null
            ? null
            : PrimaryImage.fromJson(json["primaryImage"]),
        titleType: TitleType.fromJson(json["titleType"]),
        titleText: TitleText.fromJson(json["titleText"]),
        originalTitleText: TitleText.fromJson(json["originalTitleText"]),
        releaseYear: ReleaseYear.fromJson(json["releaseYear"]),
        releaseDate: ReleaseDate.fromJson(json["releaseDate"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "id": resultId,
        "primaryImage": primaryImage?.toJson(),
        "titleType": titleType.toJson(),
        "titleText": titleText.toJson(),
        "originalTitleText": originalTitleText.toJson(),
        "releaseYear": releaseYear.toJson(),
        "releaseDate": releaseDate.toJson(),
      };
}

class TitleText {
  String text;
  OriginalTitleTextTypename typename;

  TitleText({
    required this.text,
    required this.typename,
  });

  factory TitleText.fromJson(Map<String, dynamic> json) => TitleText(
        text: json["text"],
        typename: originalTitleTextTypenameValues.map[json["__typename"]]!,
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "__typename": originalTitleTextTypenameValues.reverse[typename],
      };
}

enum OriginalTitleTextTypename { TITLE_TEXT }

final originalTitleTextTypenameValues =
    EnumValues({"TitleText": OriginalTitleTextTypename.TITLE_TEXT});

class PrimaryImage {
  String id;
  int width;
  int height;
  String url;
  Caption caption;
  String typename;

  PrimaryImage({
    required this.id,
    required this.width,
    required this.height,
    required this.url,
    required this.caption,
    required this.typename,
  });

  factory PrimaryImage.fromJson(Map<String, dynamic> json) => PrimaryImage(
        id: json["id"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
        caption: Caption.fromJson(json["caption"]),
        typename: json["__typename"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "width": width,
        "height": height,
        "url": url,
        "caption": caption.toJson(),
        "__typename": typename,
      };
}

class Caption {
  String plainText;
  CaptionTypename typename;

  Caption({
    required this.plainText,
    required this.typename,
  });

  factory Caption.fromJson(Map<String, dynamic> json) => Caption(
        plainText: json["plainText"],
        typename: captionTypenameValues.map[json["__typename"]]!,
      );

  Map<String, dynamic> toJson() => {
        "plainText": plainText,
        "__typename": captionTypenameValues.reverse[typename],
      };
}

enum CaptionTypename { MARKDOWN }

final captionTypenameValues =
    EnumValues({"Markdown": CaptionTypename.MARKDOWN});

class ReleaseDate {
  int day;
  int month;
  int year;
  ReleaseDateTypename typename;

  ReleaseDate({
    required this.day,
    required this.month,
    required this.year,
    required this.typename,
  });

  factory ReleaseDate.fromJson(Map<String, dynamic> json) => ReleaseDate(
        day: json["day"],
        month: json["month"],
        year: json["year"],
        typename: releaseDateTypenameValues.map[json["__typename"]]!,
      );

  Map<String, dynamic> toJson() => {
        "day": day,
        "month": month,
        "year": year,
        "__typename": releaseDateTypenameValues.reverse[typename],
      };
}

enum ReleaseDateTypename { RELEASE_DATE }

final releaseDateTypenameValues =
    EnumValues({"ReleaseDate": ReleaseDateTypename.RELEASE_DATE});

class ReleaseYear {
  int year;
  dynamic endYear;
  ReleaseYearTypename typename;

  ReleaseYear({
    required this.year,
    required this.endYear,
    required this.typename,
  });

  factory ReleaseYear.fromJson(Map<String, dynamic> json) => ReleaseYear(
        year: json["year"],
        endYear: json["endYear"],
        typename: releaseYearTypenameValues.map[json["__typename"]]!,
      );

  Map<String, dynamic> toJson() => {
        "year": year,
        "endYear": endYear,
        "__typename": releaseYearTypenameValues.reverse[typename],
      };
}

enum ReleaseYearTypename { YEAR_RANGE }

final releaseYearTypenameValues =
    EnumValues({"YearRange": ReleaseYearTypename.YEAR_RANGE});

class TitleType {
  DisplayableProperty displayableProperty;
  Text text;
  Id id;
  bool isSeries;
  bool isEpisode;
  List<Category> categories;
  bool canHaveEpisodes;
  TitleTypeTypename typename;

  TitleType({
    required this.displayableProperty,
    required this.text,
    required this.id,
    required this.isSeries,
    required this.isEpisode,
    required this.categories,
    required this.canHaveEpisodes,
    required this.typename,
  });

  factory TitleType.fromJson(Map<String, dynamic> json) => TitleType(
        displayableProperty:
            DisplayableProperty.fromJson(json["displayableProperty"]),
        text: textValues.map[json["text"]]!,
        id: idValues.map[json["id"]]!,
        isSeries: json["isSeries"],
        isEpisode: json["isEpisode"],
        categories: List<Category>.from(
            json["categories"].map((x) => Category.fromJson(x))),
        canHaveEpisodes: json["canHaveEpisodes"],
        typename: titleTypeTypenameValues.map[json["__typename"]]!,
      );

  Map<String, dynamic> toJson() => {
        "displayableProperty": displayableProperty.toJson(),
        "text": textValues.reverse[text],
        "id": idValues.reverse[id],
        "isSeries": isSeries,
        "isEpisode": isEpisode,
        "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
        "canHaveEpisodes": canHaveEpisodes,
        "__typename": titleTypeTypenameValues.reverse[typename],
      };
}

class Category {
  Value value;
  CategoryTypename typename;

  Category({
    required this.value,
    required this.typename,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        value: valueValues.map[json["value"]]!,
        typename: categoryTypenameValues.map[json["__typename"]]!,
      );

  Map<String, dynamic> toJson() => {
        "value": valueValues.reverse[value],
        "__typename": categoryTypenameValues.reverse[typename],
      };
}

enum CategoryTypename { TITLE_TYPE_CATEGORY }

final categoryTypenameValues =
    EnumValues({"TitleTypeCategory": CategoryTypename.TITLE_TYPE_CATEGORY});

enum Value { MOVIE, TV }

final valueValues = EnumValues({"movie": Value.MOVIE, "tv": Value.TV});

class DisplayableProperty {
  Caption value;
  DisplayablePropertyTypename typename;

  DisplayableProperty({
    required this.value,
    required this.typename,
  });

  factory DisplayableProperty.fromJson(Map<String, dynamic> json) =>
      DisplayableProperty(
        value: Caption.fromJson(json["value"]),
        typename: displayablePropertyTypenameValues.map[json["__typename"]]!,
      );

  Map<String, dynamic> toJson() => {
        "value": value.toJson(),
        "__typename": displayablePropertyTypenameValues.reverse[typename],
      };
}

enum DisplayablePropertyTypename { DISPLAYABLE_TITLE_TYPE_PROPERTY }

final displayablePropertyTypenameValues = EnumValues({
  "DisplayableTitleTypeProperty":
      DisplayablePropertyTypename.DISPLAYABLE_TITLE_TYPE_PROPERTY
});

enum Id { MOVIE, TV_SERIES }

final idValues = EnumValues({"movie": Id.MOVIE, "tvSeries": Id.TV_SERIES});

enum Text { MOVIE, TV_SERIES }

final textValues =
    EnumValues({"Movie": Text.MOVIE, "TV Series": Text.TV_SERIES});

enum TitleTypeTypename { TITLE_TYPE }

final titleTypeTypenameValues =
    EnumValues({"TitleType": TitleTypeTypename.TITLE_TYPE});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
