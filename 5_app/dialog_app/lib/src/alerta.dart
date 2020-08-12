import 'package:flutter/material.dart';

class MyAlert extends StatefulWidget {
  @override
  _MyAlertState createState() => _MyAlertState();
}

enum DialogAction { yes, no }

class _MyAlertState extends State<MyAlert> {
  String inputValue = "";
  void alertResult(DialogAction action) {
    print("Tu seleccion fue: $action");
  }

  void showAlert(String value) {
    AlertDialog dialog = AlertDialog(
      content: Text(value),
      actions: <Widget>[
        FlatButton(
            child: Text("Si"),
            onPressed: () {
              alertResult(DialogAction.yes);
            }),
        FlatButton(
            onPressed: () {
              alertResult(DialogAction.no);
            },
            child: Text("No"))
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return dialog;
        });
  }

  void onChanged(String value) {
    setState(() {
      inputValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alerta",
          style: TextStyle(fontSize: 25.0, color: Colors.redAccent),
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Ingrese su texto aqui..."),
              onChanged: onChanged,
            ),
            RaisedButton(
              child: Text(
                "Press",
                style: TextStyle(color: Colors.deepOrange, fontSize: 20.0),
              ),
              onPressed: () {
                showAlert(inputValue);
              },
              color: Colors.blue[250],
            ),
          ],
        ),
      ),
    );
  }
}
