import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';
import 'package:get/get.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: category.CategoryName,
              );
            },
          ),
        );
        // Get.to(
        //       () => CategoryView(
        //     category: category.CategoryName,
        //   ),
        // );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Container(
          height: 95,
          width: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(category.ImageAsstUrl), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              category.CategoryName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
