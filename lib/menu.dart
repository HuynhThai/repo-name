import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter/material.dart';
//import 'package:webview_flutter/webview_flutter.dart';
class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {


  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
        new ListTile(
          leading: new Icon(Icons.school),
          title: new Text('Giới thiệu'),
        ),
        new Padding(
          padding: EdgeInsets.all(4.0)),
         // Container(
           // child: WebView(
           // initialUrl: 'https://www.ctu.edu.vn/',
           //   javascriptMode: JavascriptMode.unrestricted,
           // )
          //),
        new ListTile(
          leading: new Icon(Icons.record_voice_over),
          title: new Text('Thông tin tuyển sinh'),
        ),
        new Padding(
          padding: EdgeInsets.all(4.0)),
          //Container(
            //child: WebView(
              //initialUrl: ' https://tuyensinh.ctu.edu.vn/dai-hoc-chinh-quy/thong-tin-tuyen-sinh.html',
              //javascriptMode: JavascriptMode.unrestricted,
            //),
          //),
        new ListTile(
          leading: new Icon(Icons.list),
          title: new Text('Danh sách ngành'),
        ),
        new Padding(
          padding: EdgeInsets.all(4.0)),        
        new ListTile(
          leading: new Icon(Icons.more),
          title: new Text('Xét tuyển thẳng'),
        ),
        new Padding(
          padding: EdgeInsets.all(4.0)),
          //Container(
            //child: WebView(
            //initialUrl: 'https://tuyensinh.ctu.edu.vn/chuong-trinh-dai-tra/793-xet-tuyen-thang.html',
            //javascriptMode: JavascriptMode.unrestricted,
            //)
         // ),
         new ListTile(
          leading: new Icon(Icons.mail_outline),
          title: Text('Thông tin liên hệ'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('- Địa Chỉ : Đường 3/2, Quận Ninh Kiều, TP.Cần Thơ'),
              Text('- Điện thoại : 0292.3872 728'),
              Text('- Email:tuyensinh@ctu.edu.vn'),
              Text('- Mobile/Zalo/Viber:0886889922'),
              Text('- Kênh tư vấn: http://www.facebook.com/ctu.tvts')
            ],
          ),
        ),
        new Padding(
          padding: EdgeInsets.all(5.0)),
      ],
    );
  }
}
class WebView extends State<Menu> {
  final Completer<WebViewController> _controller= completer<WebviewController>();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
      body: WebView(
        initialUrl: 'https://www.ctu.edu.vn/',
         javacriptMode: JavascriptMode.unrestricted,
         onWebViewCreated:(WebViewController webViewController){
        _controller.complete(webViewController);
      ),
    floatingActionButton: FutureBuilder<WebViewController>(
      future: _controller.future ,
      builder: (BuildContext context, AsyncSnapshot<WebViewController> controller),{
        if (controller.hasData) {
          return FloatingActionButton(
            onPressed: () async{
              controller.data.reload();

            },
            child: const Icon(Icon.refesh),
            );   
        }
        return Container();
      }    
   );
  }
}