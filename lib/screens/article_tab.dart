import 'package:flutter/material.dart';

import '../models/article.dart';
import '../widgets/article_item.dart';

class ArticleTab extends StatelessWidget {
  const ArticleTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Article_Item(
                          id: article[index].id,
                          title: article[index].title,
                          image: article[index].image,
                        );
                      },
                      itemCount: article.length,
                    ),
                  ),
                );
  }
}