import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.account_box,
                size: 160.0,
                color: Colors.white70,
              ),
              Icon(
                Icons.apps,
                size: 60.0,
                color: Colors.white30,
              ),
              Text("Segundo Tab")
            ],
          )),
        ));
  }
}
