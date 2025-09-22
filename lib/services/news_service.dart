
import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsService{

  final Dio dio;


  NewsService(this.dio);

  List<String>Categories = ['business', 'entertainment', 'general', 'health', 'science', 'sports', 'technology'];

  Future<List<ArticleModel>> getGeneralNews({required String category}) async{

      Response response = await dio.get('https://newsapi.org/v2/top-headlines?apiKey=910dca3f641944e193175e4ecbe87884&country=us&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel>articleslist = [];

      for (var article in articles){
        ArticleModel articleModel =
        ArticleModel(Image: article['urlToImage'], Title: article['title'], Subtitle: article['description']);
        articleslist.add(articleModel);
      }

      return articleslist;

  }





}