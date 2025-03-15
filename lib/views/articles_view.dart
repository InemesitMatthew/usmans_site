import 'package:flutter/material.dart';
import '../models/article.dart';
import '../components/article_card.dart';

class ArticlesView extends StatelessWidget {
  final List<Article> articles;

  const ArticlesView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return ArticleCard(article: articles[index]);
      },
    );
  }
}
