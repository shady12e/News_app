import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  CategoryView({
    super.key,
    required this.title, required this.category
  });
  final String title;
  final String category ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title:  Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w600),
              ),
              Text(
                ' News',
                style: TextStyle(color: Colors.amber, fontSize: 30),
              )
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            ListViewBuilder(category:category ),
          ],
        ));
  }
}
