import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  @override
  _MyTextFieldState createState() => new _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  String inputText = "";
  final TextEditingController controller = TextEditingController();
  void onSubmitted(String value) {
    setState(() {
      inputText = inputText + "\n" + value;
      controller.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Text Field",
          style: TextStyle(fontSize: 20.0, color: Colors.black38),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  hintText: "Ingrese el texto aqui...."), //placeholder
              onSubmitted: onSubmitted,
              controller: controller,
            ),
            Text(
              inputText,
              style: TextStyle(fontSize: 30.0, color: Colors.blueGrey),
            )
          ],
        ),
      ),
    );
  }
}
