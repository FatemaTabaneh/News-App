import 'package:flutter/material.dart';

class News_card extends StatelessWidget {
  const News_card({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      child: Column(
        children: [
          SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              'https://images.unsplash.com/photo-1495020689067-958852a7765e?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bmV3c3xlbnwwfHwwfHx8MA%3D%3D',
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Lage Title Should be places in this place large ',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 8),
          Text('and here is the description of the news you can place your ',
            maxLines: 2,
            style: TextStyle(color: Colors.grey,fontSize: 16),)
        ],
      ),
    );
  }
}
