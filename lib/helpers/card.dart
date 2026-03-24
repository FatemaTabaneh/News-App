import 'package:flutter/material.dart';
import 'package:news_application/models/category_model.dart';

class categoriesCard extends StatelessWidget {
  final modelCard model;
  categoriesCard({required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Container(
        height: 100,
        width: 200,
        child: Center(
          child: Text(model.CardName, style: TextStyle(color: Colors.white)),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(model.UrlImage),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
