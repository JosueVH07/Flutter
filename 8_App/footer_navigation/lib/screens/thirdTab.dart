import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amberAccent,
        body: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.zoom_out,
                size: 160.0,
                color: Colors.white70,
              ),
              Icon(
                Icons.wifi_lock,
                size: 60.0,
                color: Colors.white30,
              ),
              Text("Tercer Tab")
            ],
          )),
        ));
  }
}
