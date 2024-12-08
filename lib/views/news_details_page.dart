import 'package:flutter/material.dart';
import '../models/article_model.dart';

class NewsDetailsPage extends StatelessWidget {
  final ArticleModel articleModel;

  const NewsDetailsPage({super.key, required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(articleModel.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            articleModel.image != null
                ? Image.network(
              articleModel.image!,
              fit: BoxFit.cover,
            )
                : const SizedBox(),
            const SizedBox(height: 16),
            Text(
              articleModel.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              articleModel.subtitle ?? '',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

