import 'package:flutter/material.dart';
import 'dart:math';

class App extends StatefulWidget {
  @override
  _AppState createState() => new _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista Infinita'),
      ),
      body: ListView.builder(itemBuilder: (context, i) {
        return ListTile(
          leading: Icon(Icons.shop),
          title: Text('producto'),
          subtitle: Text('precio: ${Random().nextInt(100)} USD'),
        );
      }),
    );
  }
}
