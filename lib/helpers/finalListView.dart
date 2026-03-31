import 'package:flutter/material.dart';
import 'package:news_application/helpers/NewsCard.dart';
import 'package:news_application/services/news_service.dart';

import '../models/article_model.dart';

class final_List_View extends StatefulWidget {
  const final_List_View({super.key});

  @override
  State<final_List_View> createState() => _final_List_ViewState();
}

class _final_List_ViewState extends State<final_List_View> {
  List<ArticleModel> articles = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    News();
  }

  Future<void> News() async {
    try {
      final data = await NewsService().getNews();
      setState(() {
        articles = data;
        isLoading = false;
      });
    } catch (e) {
      print(e);
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: NewsService().getNews(),
      builder: (context, snapshot) {
        if(snapshot.connectionState==ConnectionState.waiting){
          return Center(child: CircularProgressIndicator());
        }
        if(snapshot.hasError){
          return Center(child: Text('Error: ${snapshot.error}'));
        }
        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No news found'));
        }
        final articles = snapshot.data!;

        return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: articles.length,
          itemBuilder: (context, index) {
            return News_card(articleModel: articles[index]);
          },
        );
      },
    );

  }
}
