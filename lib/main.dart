import 'package:flutter/material.dart';
import 'package:flutter_course/session1/practice/home_page.dart';
import 'package:flutter_course/session1/task/task.dart';


void main() {
  runApp(const MyApp()); // entry point

  //material app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );


  }
}

