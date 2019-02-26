import 'package:flutter/material.dart';

class CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = Card(
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('浙江省宁波市',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.orange)),
              subtitle: Text('131-2382-1702'),
              leading: Icon(
                Icons.account_box,
                color: Colors.orangeAccent,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('浙江省宁波市',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.orange)),
              subtitle: Text('131-2382-1702'),
              leading: Icon(
                Icons.account_box,
                color: Colors.orangeAccent,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('浙江省宁波市',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.orange)),
              subtitle: Text('131-2382-1702'),
              leading: Icon(
                Icons.account_box,
                color: Colors.orangeAccent,
              ),
            ),
            Divider(),
          ],
        ),
      );
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: Center(
        child: card,
      )
    );
  }
}
