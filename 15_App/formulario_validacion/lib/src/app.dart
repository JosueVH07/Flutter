import 'package:flutter/material.dart';
import 'package:formulario_validacion/src/screens/login.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Formulario',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}
