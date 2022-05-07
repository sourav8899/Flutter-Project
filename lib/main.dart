import 'package:flutter/material.dart';
import 'package:untitled3/bottomnavigation.dart';
import 'package:untitled3/cars.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'buy and sell',
      theme: ThemeData(
          primaryColor: Color.fromARGB(255, 184, 185, 203),
          accentColor: Colors.blue),
      home: BottomMenu(),
    );
  }
}
