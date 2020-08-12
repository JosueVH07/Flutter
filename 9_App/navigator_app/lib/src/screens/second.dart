import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  final String title;
  Second({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Ir atras..."),
          color: Colors.orangeAccent,
          onPressed: () {
            Navigator.pop(
                context); // elimina el ultimo elemento del estack y despliega el siguiente en el
          },
        ),
      ),
    );
  }
}
