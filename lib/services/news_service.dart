import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:news_application/models/article_model.dart';

class NewsService {
  final dio = Dio();

  Future<List<ArticleModel>> getNews() async {
    Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?apiKey=e45253c41bd141489efceebde8510bdf&country=us&category=general',
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article['urlToImage']?? '',
        title: article['title']?? '',
        subTitle: article['description']?? '',
      );
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
