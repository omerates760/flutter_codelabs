import 'package:flutter/material.dart';
import 'package:flutter_codelabs/views/first_app/sample_app.dart';
import 'package:flutter_codelabs/views/mdc_101_102_material_component/gridview_page.dart';
import 'package:flutter_codelabs/views/mdc_101_102_material_component/material_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GridviewPage(),
    );
  }
}
