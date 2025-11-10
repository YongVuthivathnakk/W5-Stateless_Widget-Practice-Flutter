import 'package:flutter/material.dart';
import 'package:w5_practice/pages/exercise1/exercise1.dart';
import 'package:w5_practice/pages/exercise2/exercise2.dart';
import 'package:w5_practice/pages/exercise3/exercise3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Exercise3(),
    );
  }
}
