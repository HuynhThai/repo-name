import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class NewPage extends StatelessWidget {
  final String Danhsachnganh;

  
  NewPage(this.Danhsachnganh);
  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      new AppBar(
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
 