import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);
  final _saved = new Set<WordPair>();

  Widget _buildRow(WordPair suggestion) {
    final alreadySaved = _saved.contains(suggestion);
    return Container(
      height: 44,
      color: Colors.yellow,
      child: ListTile(
        title: Text(
          suggestion.asPascalCase,
          style: _biggerFont,
        ),
        trailing: Icon(
          alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null,
        ),
        onTap: () {
          setState(() {
            if (alreadySaved) {
              _saved.remove(suggestion);
            } else {
              _saved.add(suggestion);
            }
          });
        },
      ),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(18),
      itemBuilder: (context, i) {
        if (i.isOdd)
          return Divider(
            color: Colors.red,
          );
        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget build(BuildContext context) {
    // final wordPair = new WordPair.random();
    // return new Text(wordPair.asPascalCase);

    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
        
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: _pushSaved,
          )
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      final titles = _saved.map((pair) {
        return ListTile(
          title: Text(pair.asPascalCase, style: _biggerFont),
        );
      });
      final divided = ListTile.divideTiles(
        context: context,
        tiles: titles,
      ).toList();

      return new Scaffold(appBar: AppBar(
        title: Text('Saved List'),
      ),
      body: 
      ListView(
        children: divided,
      ),);

    }));
  }
}
