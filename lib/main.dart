import 'package:flutter/material.dart';
import 'package:skyewall_project/pages/home.dart';

void main() {
  runApp(const MyApp());
}

//the world is yours
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Home(),
    );
  }
}
