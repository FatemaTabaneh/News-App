import 'package:flutter/material.dart';
import 'package:news_application/models/category_model.dart';

import 'card.dart';

class categoriesListView extends StatelessWidget {

  List<modelCard> list=[
    modelCard(UrlImage: 'assets/business.avif', CardName: 'Business'),
    modelCard(UrlImage: 'assets/entertaiment.avif', CardName: 'Entertaiment'),
    modelCard(UrlImage: 'assets/general.avif', CardName: 'General'),
    modelCard(UrlImage: 'assets/health.avif', CardName: 'Health'),
    modelCard(UrlImage: 'assets/science.avif', CardName: 'Science'),
    modelCard(UrlImage: 'assets/sports.avif', CardName: 'Sport'),
    modelCard(UrlImage: 'assets/technology.jpeg', CardName: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: list.length,
          itemBuilder: (context,index){
            return  categoriesCard(model: list[index],);
          }),
    );
  }
}