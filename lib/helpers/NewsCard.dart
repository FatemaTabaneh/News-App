import 'package:flutter/material.dart';
import 'package:news_application/models/article_model.dart';

class News_card extends StatelessWidget {
  final ArticleModel articleModel;
   News_card({required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        children: [
          SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              articleModel.image
            ),
          ),
          SizedBox(height: 12),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8),
          Text(articleModel.subTitle,
            maxLines: 2,
            style: TextStyle(color: Colors.grey,fontSize: 16),)
        ],
      ),
    );
  }
}
