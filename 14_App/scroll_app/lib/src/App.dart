import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        children: <Widget>[
          Container(
            color: Colors.amber,
            child: Icon(
              Icons.ac_unit,
              color: Colors.white70,
            ),
          ),
          Container(
            color: Colors.lightGreen,
            child: Icon(Icons.accessibility),
          ),
          Container(
            color: Colors.deepPurple,
            child: Icon(Icons.add_to_home_screen),
          )
        ],
      ),
    );
  }
}
