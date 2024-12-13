import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/widgets/news_tile.dart';

class NewsListVeiw extends StatelessWidget {
  const NewsListVeiw({super.key, required this.articalNewsList});
  final List<ArticalModel> articalNewsList;

  

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articalNewsList.length, 
      (context, index) {
        return Newstile(
          articalModel: articalNewsList[index],
        );
      }),
    );
  }
}
