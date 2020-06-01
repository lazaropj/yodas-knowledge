import 'package:flutter/material.dart';
import 'package:yodas_knowledge/pages/home/home.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Yoda's Knowledge",
      theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: 'Starjedi'
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
      },
    );
  }
}


