import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';

// ignore: must_be_immutable
class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});
  List<CatogoryModel> categorylist = [
    CatogoryModel(image: 'assets/business.avif', catecoryName: 'business'),
    CatogoryModel(
        image: 'assets/entertaiment.avif', catecoryName: 'Entertainment'),
    CatogoryModel(image: 'assets/general.avif', catecoryName: 'general'),
    CatogoryModel(image: 'assets/health.avif', catecoryName: 'health'),
    CatogoryModel(image: 'assets/science.avif', catecoryName: 'science'),
    CatogoryModel(image: 'assets/sports.avif', catecoryName: 'sports'),
    CatogoryModel(image: 'assets/technology.jpeg', catecoryName: 'technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categorylist.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            catogoryModel: categorylist[index],
          );
        },
      ),
    );
  }
}
