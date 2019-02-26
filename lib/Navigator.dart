import 'package:flutter/material.dart';

class MyNaviApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Navigator'),
      // leading: BackButton(),
      ),
      body: Center(
        child:RaisedButton(
          child: Text('跳转到第二个页面'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=>new SecondPage(),
            ));
          }
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(appBar: AppBar(title: Text('SecondPage'),),
      body: Center(
        child: RaisedButton(
          child: Text('pop to first page'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}