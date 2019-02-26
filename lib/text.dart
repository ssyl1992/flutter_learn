import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
        leading: BackButton(),
      ),
      body: Center(
        // child: Text('Text Widget'),
        child: Text(
          'Text Widget 多行显示，格式化，颜色等等属性的设置 ,textAlign:对齐方式  center,left,   maxLines:最多显示的行数,  overflow: TextOverflow.ellipsis  以...来显示多余的',
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 25.0,
              // color: Colors.blue
              color: Color.fromARGB(255, 255, 125, 125),
              decoration: TextDecoration.underline, // 增加下划线
              decorationStyle: TextDecorationStyle.dotted,
              decorationColor: Colors.yellow // 底线颜色

              ),
          // overflow: TextOverflow.fade,
        ),
      ),
    );
  }
}
