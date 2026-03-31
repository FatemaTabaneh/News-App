import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_application/Screens/home_screen.dart';

void main(){
  runApp(const myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_screen(),
    );
  }
}
