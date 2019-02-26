import 'package:flutter/material.dart';

class ContainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
        leading: BackButton(),
      ),
      body: Center(
        // child: Text('Text Widget'),
        child: Container(
          child: Text(
            'Container Widget',
            style: TextStyle(fontSize: 20),
            // textAlign: TextAlign.left,
          ),
          alignment: Alignment.topLeft,
          // color: Colors.blue,
          width: 500.0,
          height: 500.0,
          margin: EdgeInsets.all(30), // 外边距
          // padding: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
                colors: [Colors.red, Colors.yellow, Colors.blue]),
            border: Border.all(color: Colors.green, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
        ),
      ),
    );
  }
}
