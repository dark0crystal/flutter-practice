
import 'package:flutter/material.dart';
import 'package:project/pages/MyHomePage.dart';
import 'package:project/pages/SecondPage.dart';


void main() {
  runApp(MyApp());
}
//fixx
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),  // Home page route
        '/second': (context) => SecondPage(),  // Second page route
      },
    );
  }
}
