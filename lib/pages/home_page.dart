import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _imageUrls = [
    "http://img.ivsky.com/img/bizhi/t/201906/27/senlin-004.jpg",
    "http://img.ivsky.com/img/bizhi/t/201906/27/senlin-006.jpg",
    "http://img.ivsky.com/img/bizhi/t/201906/27/senlin-007.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              child: Swiper(
                itemCount: _imageUrls.length, //数量
                autoplay: true, //是否自动播放
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    _imageUrls[index],
                    fit: BoxFit.fill,
                  );
                },
                pagination: SwiperPagination(), //设置指示器以及其类型
              ),
            )
          ],
        ),
      ),
    );
  }
}
