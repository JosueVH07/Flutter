import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  final Widget title;
  final Widget icon;

  Mycard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            child: Column(
      children: <Widget>[this.title, this.icon],
    )));
  }
}
