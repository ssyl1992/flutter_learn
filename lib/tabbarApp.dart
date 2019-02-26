import 'package:flutter/material.dart';

class TabBarApp extends StatefulWidget {
  final Widget child;

  TabBarApp({Key key, this.child}) : super(key: key);

  _TabBarAppState createState() => _TabBarAppState();
}

class _TabBarAppState extends State<TabBarApp> {
  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomBar = BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: const Icon(Icons.access_alarm), title: Text('page1')),
        BottomNavigationBarItem(
            icon: const Icon(Icons.account_box), title: Text('page2')),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Tabbar'),
      ),
      body: Center(
        child: Text('page1'),
      ),
      bottomNavigationBar: bottomBar,
    );
  }
}
