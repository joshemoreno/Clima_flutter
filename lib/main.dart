import 'package:clima/ui/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clima',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
