import 'package:flutter/material.dart';

class ImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text('Container'),
        leading: BackButton(),),
        body: Center(
          child: Container(
            child: Image.network(
              'https://beatop-video.oss-cn-hangzhou.aliyuncs.com/youxue/gdrive/8e5476cb-3080-4162-bac3-46c7ff1734e0_IMG_20190214_101708.jpg',
              fit: BoxFit.scaleDown,
              // color: Colors.green, 
              // colorBlendMode: BlendMode.darken,  // 颜色混合
              // repeat: ImageRepeat.repeat, //图片重复
            ),
            width: 300.0,
            height: 300.0,
            color: Colors.lightBlue,
          ),

          // child: Text('Hello'),
        ),
      );
  }
}
