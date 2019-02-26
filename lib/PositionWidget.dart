import 'package:flutter/material.dart';

class PositionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('position'),
      ),
      body: Stack(
        children: <Widget>[
          CircleAvatar(backgroundImage:AssetImage('images/6.jpg'),radius: 100.0,),
          Positioned(
            top: 10.0,
            left: 10.0,
            child: Text('左上布局'),
          ),
          Positioned(
            bottom: 10.0,
            right: 10.0,
            child: Text('右下布局'),
          )
        ],
      ),
    );
  }


}