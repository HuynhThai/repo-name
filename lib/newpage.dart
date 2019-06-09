
import 'package:flutter/material.dart';
class NewPage extends StatelessWidget {
  final String title;

  
  NewPage(this.title);
  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      appBar: new AppBar(
        title: new Text('Danh sách ngành'),
      ),
      body: new ListView(
        children: <Widget>[
          new Text('Danh sách ngành'),
        ],
      ),
    );
  }
}
 