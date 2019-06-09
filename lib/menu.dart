import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new ListTile(
          title: new Text('Giới thiệu Đại Học Cần Thơ'),
          trailing: new Icon(Icons.trending_flat),
          //url: 'https://www.ctu.edu.vn/',
        ),
        new ListTile(
          title: new Text('Thông tin tuyển sinh'),
          trailing: new Icon(Icons.trending_flat),
          //url:'https://tuyensinh.ctu.edu.vn/dai-hoc-chinh-quy/thong-tin-tuyen-sinh.html',
        ),
        new ListTile(
          title: new Text('Danh sách ngành'),
          trailing: new Icon(Icons.trending_flat),
        ),
        new ListTile(
          title: new Text('Xét tuyển thẳng'),
          trailing: new Icon(Icons.trending_flat),
          //url:'https://tuyensinh.ctu.edu.vn/chuong-trinh-dai-tra/793-xet-tuyen-thang.html',
        ),
        ListTile(
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
