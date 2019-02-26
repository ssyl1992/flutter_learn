import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LYStack extends StatelessWidget {
  const LYStack();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stack"),
        leading: new BackButton(),
      ),
      body: new LYStackContent(),
    );
  }
}

class LYStackContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: FractionalOffset(1, 0.1),
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('images/6.jpg'),
          radius: 100.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black45,
          ),
          child: Text(
            'Teng Yuebing',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        
      ],
    );
  }
}
