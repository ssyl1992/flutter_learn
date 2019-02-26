import 'package:flutter/material.dart';

class PageValue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('跳转返回数据'),
      ),
      body: Center(
        child: RouteButton(),
      ),
    );
  }
}

class RouteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('点击跳转'),
      onPressed: () {
        _navigateToPageTwo(context);
      },
    );
  }

  _navigateToPageTwo(BuildContext context) async {
    final result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return SecondPage();
    }));
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(result),
      duration: Duration(seconds: 1),
    ));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('detail'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return GestureDetector(
              child: ListTile(
                title: Text('index ${index}'),
              ),
              onTap: () {
                Navigator.pop(context, 'index ${index}');
              });
        },
      ),
    );
  }
}
