import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';


class CategoriesListview extends StatelessWidget {
  CategoriesListview({super.key});


  final List<CategoryModel>Categories = [
    CategoryModel(AssestImage: 'business.png', Title:'Business'),
    CategoryModel(AssestImage: 'entertainment.png', Title: 'Entertainment'),
    CategoryModel(AssestImage: 'general.png', Title: 'General'),
    CategoryModel(AssestImage: 'health.png', Title: 'Health'),
    CategoryModel(AssestImage: 'science.png', Title: 'Science'),
    CategoryModel(AssestImage: 'sports.png', Title: 'Sports'),
    CategoryModel(AssestImage: 'technology.jpeg', Title: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(Category: Categories[index]);
        },
      ),
    );
  }
}
