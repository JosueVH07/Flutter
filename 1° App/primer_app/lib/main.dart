import 'package:flutter/material.dart';

void main(app) {
  var app = MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text("Mi primer APP"),
    ),
    body: Container(
      child: Center(
        child: Text(
          "Hello WOrld",
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(
        Icons.add,
      ),
      onPressed: () {
        print('click');
      },
    ),
  ));

  runApp(app);
}
