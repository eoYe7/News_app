import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:dio/dio.dart';
import 'newis_list_view.dart';

class NewsListViewBuider extends StatefulWidget {
  const NewsListViewBuider({
    super.key, required this.category,
  });
final String category;
  @override
  State<NewsListViewBuider> createState() => _NewsListViewBuiderState();
}

class _NewsListViewBuiderState extends State<NewsListViewBuider> {
  var future;
  @override
  void initState() {
    super.initState();
    future= NewsService(Dio()).getNews(
      category: widget.category,
    );
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future:future ,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text('Opps there was an error ,try later'),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
  }
}
