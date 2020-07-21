import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:text_button/views/first_app/random_words.dart';

class SampleApp extends StatelessWidget {
  const SampleApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // final wordPair = WordPair.random();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Startup Name Generator'),
      ),
      body: Center(
        child: RandomWords(),
      ),
    );
  }
}
