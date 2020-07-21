import 'package:flutter/material.dart';
import 'package:text_button/views/first_app/sample_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SampleApp(),
    );
  }
}