import 'package:flutter/material.dart';
import 'package:footer_navigation/screens/SecondTab.dart';
import 'package:footer_navigation/screens/firstTab.dart';
import 'package:footer_navigation/screens/thirdTab.dart';

class navigator extends StatefulWidget {
  @override
  _navigatorState createState() => new _navigatorState();
}

class _navigatorState extends State<navigator> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Navigation"),
          ),
          body: TabBarView(
              children: <Widget>[FirstTab(), SecondTab(), ThirdTab()]),
          bottomNavigationBar: Material(
            color: Colors.lime,
            child: TabBar(tabs: <Tab>[
              Tab(icon: Icon(Icons.alternate_email)),
              Tab(icon: Icon(Icons.wifi_lock)),
              Tab(icon: Icon(Icons.zoom_in))
            ]),
          ),
        ));
  }
}
