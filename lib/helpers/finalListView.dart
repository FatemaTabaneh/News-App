import 'package:flutter/material.dart';
import 'package:news_application/helpers/NewsCard.dart';

class final_List_View extends StatelessWidget {
  const final_List_View({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context,index){
      return News_card();
    });
  }
}
