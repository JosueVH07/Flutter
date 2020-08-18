import 'package:flutter/material.dart';
import 'package:navigator_app/src/screens/second.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => new _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Mostrar Pantalla"),
          color: Colors.amberAccent,
          onPressed: () {
            Navigator.push(
                //toma la segunda pantalla y la coloca en stack
                context,
                MaterialPageRoute(
                    builder: (context) => Second(
                          title:
                              "Josue", //envio de datos por medio de un constructor (datos pequeños)
                        ))); //renderiza la pantalla en la app
          },
        ),
      ),
    );
  }
}
