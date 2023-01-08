import 'new_media.dart';

class New {
  final String title;
  final String publishedDate;
  final String abstract;
  final List<NewMedia> media;

  New({
    required this.title,
    required this.publishedDate,
    required this.abstract,
    required this.media,
  });

  factory New.fromJson(Map<String, dynamic> json) {
    List newsMediaJson = json["multimedia"] as List;
    List<NewMedia> mediaList =
        newsMediaJson.map((e) => NewMedia.fromJson(e)).toList();

    return New(
        title: json["title"],
        publishedDate: json["published_date"],
        abstract: json["abstract"],
        media: mediaList
    );
  }
}
