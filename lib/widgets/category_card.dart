import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/views/category_view.dart';

// ignore: must_be_immutable
class CategoryCard extends StatelessWidget {
  CategoryCard({super.key, required this.catogoryModel});
  CatogoryModel catogoryModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                title: catogoryModel.catecoryName,
                category: catogoryModel.catecoryName,
              );
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsetsDirectional.all(3),
        height: 110,
        width: 180,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(catogoryModel.image),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            catogoryModel.catecoryName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 21,
            ),
          ),
        ),
      ),
    );
  }
}
