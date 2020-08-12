import 'package:flutter/material.dart';
import 'package:stateless_app/src/screens/card.dart';

class MyApp extends StatelessWidget {
  final double iconSize = 40.0;
  final TextStyle textStyle = TextStyle(color: Colors.grey, fontSize: 30.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateless Widget"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0), //padding en todo los lados
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Mycard(
                title: Text("Josue Velazquez", style: textStyle),
                icon: Icon(Icons.favorite, color: Colors.red, size: iconSize)),
            Mycard(
              title: Text("ISC", style: textStyle),
              icon: Icon(Icons.thumb_up, color: Colors.blue, size: iconSize),
            ),
            Mycard(
              title: Text("7°", style: textStyle),
              icon: Icon(Icons.unarchive, color: Colors.green, size: iconSize),
            )
          ],
        ),
      ),
    );
  }
}
