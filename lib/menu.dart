import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
      
class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      new AppBar(
        leading: Icon(Icons.menu),
      ),
      
      drawer: new Drawer (
        child: new ListView(
          children: <Widget>[
        new IconButton(
          icon: new Icon(Icons.search),
          tooltip: 'search',
          onPressed: null,
        ),
        new  ListTile(
          title: new Text('Giới thiệu Đại Học Cần Thơ'),
          trailing: new Icon(Icons.trending_flat)
        ),
        new ListTile(
          title: new Text('Thông tin tuyển sinh'),
          trailing: new Icon(Icons.trending_flat),
        ),
        new ListTile(
          title: new Text('Danh sách ngành'),
          trailing: new Icon(Icons.trending_flat),
          
        ),
        new ListTile(
          title: new Text('Xét tuyển thẳng'),
          trailing: new Icon(Icons.trending_flat),
        ),
        new ListTile(
          title: new Text('Thông tin liên hệ'),
          child: new ListView(
            children: <Widget>[
          new Text('Phòng Đào tạo - Trường Đại học Cần Thơ'),
          new Text('- Địa Chỉ : Đường 3/2, Quận Ninh Kiều, TP.Cần Thơ'),
          new Text('- Điện thoại : 0292.3872 728'),
          new Text('- Email:tuyensinh@ctu.edu.vn'),
          new Text('- Mobile/Zalo/Viber:0886889922'),
          new Text('- Kênh tư vấn: http://www.facebook.com/ctu.tvts'),
            ],
          )
          ),
        new ListTile(
          trailing: new Icon(Icons.arrow_back),
          onTap: ()=> Navigator.of(context).pop(),
        ),
        ],
        ),
        ), 
    );
  }
}
