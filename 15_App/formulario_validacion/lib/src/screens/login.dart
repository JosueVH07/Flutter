import 'package:flutter/material.dart';
import 'package:formulario_validacion/src/mixins/validationMixins.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              emailField(),
              passwordField(),
              Container(
                margin: EdgeInsets.only(top: 25.0),
              ),
              submitedField()
            ], //
          )),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(labelText: 'Email', hintText: 'Your Email'),
      validator: validateEmail,
      onSaved: (String value) {
        print(value);
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration:
          InputDecoration(labelText: 'Password', hintText: 'Your Password'),
      validator: validatePassword,
      onSaved: (String value) {
        print(value);
      },
    );
  }

  Widget submitedField() {
    return RaisedButton(
      child: Text('Send'),
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
        }
      },
      color: Colors.deepOrange,
    );
  }
}
