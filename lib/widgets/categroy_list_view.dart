import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
        ImageAsstUrl: 'assets/business.avif', CategoryName: 'Business'),
    CategoryModel(
        ImageAsstUrl: 'assets/entertaiment.avif', CategoryName: 'entertainment'),
    CategoryModel(ImageAsstUrl: 'assets/general.avif', CategoryName: 'general'),
    CategoryModel(ImageAsstUrl: 'assets/health.avif', CategoryName: 'health'),
    CategoryModel(ImageAsstUrl: 'assets/science.avif', CategoryName: 'science'),
    CategoryModel(ImageAsstUrl: 'assets/sports.avif', CategoryName: 'sports'),
    CategoryModel(
        ImageAsstUrl: 'assets/technology.jpeg', CategoryName: 'technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 95,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
