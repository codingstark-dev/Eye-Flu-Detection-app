import 'package:eyeflu/ts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eye Flu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TfliteModel(),
    );
  }
}
