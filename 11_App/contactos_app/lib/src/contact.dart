import 'package:contactos_app/src/model/contact_model.dart';
import 'package:contactos_app/src/screens/contactItems.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  buildList() {
    return <ContactModel>[
      ContactModel(
          name: 'Josue Velazquez', email: 'josuevelazquez0704@gmail.com'),
      ContactModel(name: 'Orlando Hernandez', email: 'josueVH07@outlook.com'),
      ContactModel(name: 'Lizbeth Ulloa', email: 'ulloa9974@gmail.com'),
      ContactModel(name: 'Maria Velazquez', email: 'mar_07@gmail.com'),
    ];
  }

  List<ContactItem> buildContactList() {
    return buildList()
        .map<ContactItem>((contact) => ContactItem(contact: contact))
        .toList(); //convierte el datasource en una lista
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contactos'),
      ),
      body: ListView(
        children: buildContactList(),
      ),
    );
  }
}
