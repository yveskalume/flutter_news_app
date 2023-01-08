class NewMedia {
  final String url;

  const NewMedia({required this.url});

  factory NewMedia.fromJson(Map<String, dynamic> json) {
    return NewMedia(url: json["url"]);
  }
}