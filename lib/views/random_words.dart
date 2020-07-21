import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomWords extends StatefulWidget {
  RandomWords({Key key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final List<WordPair> _suggestions = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (BuildContext _context, int i) {
        if (i.isOdd) {
          return Divider();
        }
        final int index=i ~/ 2;
        if(index>=_suggestions.length){
          _suggestions.addAll(generateWordPairs().take(15));
        }
        return _buildRow(_suggestions[index]);
              },
            );
          }
        
          Widget _buildRow(WordPair suggestion) {
            return ListTile(
              title:Text(suggestion.asPascalCase,style: _biggerFont,),
            );
          }
}
