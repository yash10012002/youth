import 'package:flutter/material.dart';

import '../models/article.dart';
import '../widgets/article_item.dart';

class ArticleTab extends StatefulWidget {
  const ArticleTab({super.key});

  @override
  State<ArticleTab> createState() => _ArticleTabState();
}

class _ArticleTabState extends State<ArticleTab> {
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    // Simulate loading data for 3 seconds
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
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
