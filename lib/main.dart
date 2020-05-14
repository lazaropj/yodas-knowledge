import 'package:flutter/material.dart';
import 'package:yodas_knowledge/pages/home.page.dart';
import 'package:yodas_knowledge/pages/people.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Yoda's Knowledge",
      theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: 'Starjedi'
      ),
      home: Home(),
    );
  }
}


