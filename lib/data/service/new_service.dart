import 'dart:convert';

import 'package:flutter_news_app/config/api.dart';
import 'package:flutter_news_app/data/model/news_response.dart';
import 'package:http/http.dart' as http;

import '../model/new.dart';

class NewService {
  Future<List<New>> getAll() async {
    final response = await http.get(Uri.parse("$apiUrl?api-key=$apiKey"));

    if (response.statusCode == 200) {
      NewsResponse newsResponse =
          NewsResponse.fromJson(jsonDecode(response.body));
      return newsResponse.news;
    } else {
      print(response.body);
      throw Exception("Cant get news");
    }
  }
}
