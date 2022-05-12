import 'package:flutter/material.dart';
import 'package:untitled3/bottomnavigation.dart';
import 'package:untitled3/item.dart';

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
        scaffoldBackgroundColor: Color.fromARGB(255, 72, 105, 253),
      ),
      home: Scaffold(
        body: BottomMenu(),
      ),
    );
  }
}
