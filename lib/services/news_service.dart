import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

 Future< List<ArticleModel>>getNews({required String category}) async {
   try{
     var response = await dio.get(
         'https://newsapi.org/v2/top-headlines?apiKey=c0520d57613e41f3860ebb81f58e9334&country=us&category=$category');
     Map<String, dynamic> jsonData = response.data;
     List<dynamic> articles = jsonData['articles'];
     List<ArticleModel> articleList = [];
     for (var article in articles) {
       ArticleModel articlemodel = ArticleModel.fromJson(article);
       articleList.add(articlemodel);
     }
     return articleList;
   }catch(e){
       return [];
   }
  }
}