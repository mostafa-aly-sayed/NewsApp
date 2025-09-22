import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';
import 'package:news_app_ui_setup/widgets/news_tile.dart';
import 'package:dio/dio.dart';


class NewsListView extends StatelessWidget {

  final List<ArticleModel>articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 22),
            child: NewsTile(
              article: articles[index],
            ),
          );
        },
        childCount: articles.length,
      ),
    );
  }
}

// API Key: 910dca3f641944e193175e4ecbe87884

// don't call any method into the build method