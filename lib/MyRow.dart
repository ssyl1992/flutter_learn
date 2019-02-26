import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
      ),
      body: Row(
        children: <Widget>[
          Expanded(
              child: RaisedButton(
            child: Text('Red Button'),
            color: Colors.redAccent,
            onPressed: () {},
          )),
          Expanded(
              child: RaisedButton(
            child: Text('Yellow Button'),
            color: Colors.yellowAccent,
            onPressed: () {},
          )),
          Expanded(
              child: RaisedButton(
            child: Text('Blue Button'),
            color: Colors.blueAccent,
            onPressed: () {},
          ))
        ],
      ),
    );
  }
}
