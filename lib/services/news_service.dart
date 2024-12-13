import 'package:dio/dio.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class GetNews {
  final Dio dio;
  GetNews(this.dio);

  Future<List<ArticalModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=2bcb489845fb4a8b856fc8abc56cac39&country=us&category=$category');

      Map<String, dynamic> jesonData = response.data;

      List<ArticalModel> aricalList = [];
      var articles = jesonData['articles'];
      for (var article in articles) {
        ArticalModel articalModel = ArticalModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
          url: article['url'],
        );
        aricalList.add(articalModel);
      }
      return aricalList;
    } catch (e) {
      // TODO
      return [];
    }
  }
}
