import 'new.dart';

class NewsResponse {
  final String status;
  final List<New> news;

  const NewsResponse({required this.status, required this.news});

  factory NewsResponse.fromJson(Map<String, dynamic> json) {

    List newsListJson = json["results"] as List;
    List<New> newsList = newsListJson.map((e) => New.fromJson(e)).toList();
    return NewsResponse(
        status: json["status"], news: newsList);
  }
}
