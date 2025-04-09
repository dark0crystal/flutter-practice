import 'dart:io';


void main(){
  print("Enter your name: ");
  String? name =stdin.readLineSync();
  print("your name: $name" );

   print("Enter your age:");
  int age = int.parse(stdin.readLineSync()!); // `!` asserts it’s not null
  print("You are $age years old.");

}

// import 'package:flutter/material.dart';
// import 'package:project/pages/MyHomePage.dart';
// import 'package:project/pages/SecondPage.dart';


// void main() {
//   runApp(MyApp());
// }
// //fixxx
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => MyHomePage(),  // Home page route
//         '/second': (context) => SecondPage(),  // Second page route
//       },
//     );
//   }
// }
