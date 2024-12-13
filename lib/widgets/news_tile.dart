import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/views/web_view.dart';

// ignore: must_be_immutable
class Newstile extends StatelessWidget {
  Newstile({super.key, required this.articalModel});

  ArticalModel articalModel;
  bool isLouding = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          
          Navigator.of(context).push(
            MaterialPageRoute(
              
              builder: (context) {
                return WebView(
                  url: articalModel.url!,
                );
              },
            ),
          );

          // web view
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: articalModel.image != null
                  ? CachedNetworkImage(
                      imageUrl: articalModel.image!,
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    )
                  : Text('No image available'),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              articalModel.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              articalModel.subTitle ?? '',
              maxLines: 2,
              style: const TextStyle(color: Colors.grey, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
