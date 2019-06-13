import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Menu extends StatelessWidget {
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
          Container(
            child: WebView(
              initialUrl: 'https://www.ctu.edu.vn/',
              javascriptMode: JavascriptMode.unrestricted,
            )
          ),
        new ListTile(
          leading: new Icon(Icons.record_voice_over),
          title: new Text('Thông tin tuyển sinh'),
        ),
        new Padding(
          padding: EdgeInsets.all(4.0)),
          Container(
            child: WebView(
              initialUrl: ' https://tuyensinh.ctu.edu.vn/dai-hoc-chinh-quy/thong-tin-tuyen-sinh.html',
              javascriptMode: JavascriptMode.unrestricted,
            ),
          ),
        new ListTile(
          leading: new Icon(Icons.list),
          title: new Text('Danh sách ngành'),
        ),
        new ListTile(
          leading: new Icon(Icons.more),
          title: new Text('Xét tuyển thẳng'),
        ),
        new Padding(
          padding: EdgeInsets.all(4.0)),
          Container(
            child: WebView(
              initialUrl: 'https://tuyensinh.ctu.edu.vn/chuong-trinh-dai-tra/793-xet-tuyen-thang.html',
              javascriptMode: JavascriptMode.unrestricted,
            )
          ),
         new ListTile(
          trailing: new Icon(Icons.mail_outline),
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
      ],
    );
  }
    
   
}
//class WebView extends State<Menu> {
  //Completer<WebViewController> _controller= completer<WebviewController>();
  //final Set<String> _favorites = Set<String>();
  //@override
  ///Widget build(BuildContext context){
    //return WebView(
         //initialUrl: 'https://www.ctu.edu.vn/',
         //javacriptMode:JavascriptMode.unrestricted,
         //onWebViewCreated:(WebViewController webViewController){
        //_controller.complete(webViewController);
   //);
 // }
//}