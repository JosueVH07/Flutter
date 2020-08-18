import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => new _AppState();
}

class _AppState extends State<App> {
  final suggestions = <WordPair>[];
  final saved = <WordPair>[];

  ListTile BuildRow(WordPair pair) {
    final bool alreadyExists = saved.contains(pair);
    return ListTile(
      trailing: Icon(
        alreadyExists ? Icons.favorite : Icons.favorite_border,
        color: Colors.redAccent,
      ),
      title: Text(pair.asPascalCase),
      onTap: () {
        setState(() {
          if (alreadyExists) {
            saved.remove(pair);
          } else {
            saved.add(pair);
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    void pushedSaved() {
      //app secundaria
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        final tiles = saved
            .map<ListTile>((pair) => ListTile(
                  title: Text(pair.asCamelCase),
                ))
            .toList();
        return Scaffold(
          appBar: AppBar(
            title: Text('Elementos guardados'),
          ),
          body: ListView(children: tiles),
        );
      }));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Lista Infinita'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: pushedSaved,
          )
        ],
      ),
      body: ListView.builder(itemBuilder: (context, i) {
        if (i.isOdd)
          return Divider(); //llama al divisor y lo despliega despues de cada palabra impar
        if (i >= suggestions.length) {
          suggestions.addAll(generateWordPairs().take(10));
        }

        return BuildRow(suggestions[i]);
      }),
    );
  }
}
