import 'package:flutter/material.dart';
import 'package:story_feature_app/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:InstaHomePage(),
    );
  }
}
