import 'package:flutter/material.dart';
import 'package:tabs_app/src/screens/contact.dart';
import 'package:tabs_app/src/screens/home.dart';
import 'package:tabs_app/src/screens/video.dart';

class MyTabsState extends StatefulWidget {
  @override
  _MyTabsStateState createState() => new _MyTabsStateState();
}

class _MyTabsStateState extends State<MyTabsState> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3, //largo
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tabs"),
            backgroundColor: Colors.cyanAccent,
            bottom: TabBar(tabs: <Widget>[
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.access_alarm)),
              Tab(icon: Icon(Icons.add_alert))
            ]),
          ),
          body: TabBarView(children: <Widget>[Home(), Video(), Contact()]),
        ));
  }
}
