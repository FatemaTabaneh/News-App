import 'package:flutter/material.dart';
import 'package:news_application/helpers/NewsCard.dart';
import 'package:news_application/helpers/finalListView.dart';

import '../helpers/categories_List_view.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News'),
            Text('Cloud', style: TextStyle(color: Colors.orange)),
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      body:ListView(
        children: [
              categoriesListView(),
              SizedBox(height: 10,),
              final_List_View()
            ],
          ),
    );
  }
}


