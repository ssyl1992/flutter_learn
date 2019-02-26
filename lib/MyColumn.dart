import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // 负轴对齐方式
        mainAxisAlignment: MainAxisAlignment.center, // 主轴对齐
        children: <Widget>[
          RaisedButton(
            child: Text('Red Button'),
            color: Colors.redAccent,
            onPressed: () {},
          ),
          RaisedButton(
            child: Text('Yellow Button'),
            color: Colors.yellowAccent,
            onPressed: () {},
          ),
          RaisedButton(
            child: Text('Blue Button'),
            color: Colors.blueAccent,
            onPressed: () {},
          )
        ],
      )),
    );
  }
}
