import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        body: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.airline_seat_flat,
                size: 160.0,
                color: Colors.white70,
              ),
              Icon(
                Icons.apps,
                size: 60.0,
                color: Colors.white30,
              ),
              Text("Primer Tab")
            ],
          )),
        ));
  }
}
