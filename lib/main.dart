import 'package:flutter/material.dart';
import 'package:hello_world/menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(""),
      ),
      body: Container(
        child: Text(""),
      ),
      drawer: new Drawer(child: Menu()),
    );
  }
}
