import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(
            Icons.contact_phone,
            size: 170.0,
            color: Colors.orangeAccent,
          ),
          Text("Tercer Tab")
        ],
      ),
    );
  }
}
