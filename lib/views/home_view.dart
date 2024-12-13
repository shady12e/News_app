import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/categories_list_view.dart';
import 'package:news_app_ui_setup/widgets/news_list_view_builder.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Shady',
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
          SliverToBoxAdapter(child: CategoryListView()),
          ListViewBuilder(category: 'general'),
        ],
      ),
    );
  }
}
