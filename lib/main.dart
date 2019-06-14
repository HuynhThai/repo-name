import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.blueGrey ),
      home: new Home(),

    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: new AppBar(
      title: Text(" TUYỂN SINH CTU"),
      ),
      body:Column(children: <Widget>[
        HomeScreen(),
        //HomeScreenpart(),
        Row(
    mainAxisSize : MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:<Widget>[
      Text("Cập nhật tin tức" ),
      Spacer(),
      Text("xem >>", style: viewAllStyle ,)
      
    ],
  ),
      ],),
      drawer: new Drawer(child: Menu()),
    );
    
  }
}
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
  Widget build(BuildContext context){
    return Scaffold(
    );
    }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 200.0, color: Colors.blueGrey,
        ),
      Padding(padding: EdgeInsets.all(20.0),
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        child : TextField(
          decoration: InputDecoration(
           border: InputBorder.none,
           hintText: '  Enter a search term',
           suffixIcon: Material(
             elevation: 1.0,
             borderRadius: BorderRadius.all(Radius.circular(20.0)),
             child: Icon(Icons.search, color:Colors.black),
           )
           ),
        ),
      ),
      )
      ],
    );
  }
}
var viewAllStyle = TextStyle( fontSize: 14.0 );
var homeScreenpart = Column(children: <Widget>[
  Padding(padding: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisSize : MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children:<Widget>[
      ListView(
    scrollDirection: Axis.horizontal,
    children: <Widget>[
      Container( height:192.0),  
      Container( height:192.0),
      Container( height:192.0,),
    ],
  ) 
    ],
  ),
  ),

],
);

List<CityCard> cCard =[
  CityCard (" assets/lib/images/1.jpg"),
  CityCard (" assets/lib/images/2.png"),
  CityCard (" assets/lib/images/3.jpg"),
];

class CityCard extends StatefulWidget{
    final String imagePath;
  CityCard (this.imagePath);
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(  
        children: <Widget>[
          Container(
            decoration: BoxDecoration(image: DecorationImage(image:AssetImage(imagePath))),
            child: Image.asset(imagePath)
            ,)
        ],
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    return null;
  }
}