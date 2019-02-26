import 'package:flutter/material.dart';

class ListViewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
            title: Text('ListView Widget'),
            leading: BackButton(),
          ),
          body: Center(
            child: Container(
              height: 200.0,
              child: collectionView(),
              padding: EdgeInsets.all(10),
            ),
          ));
  }
}

class collectionView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 200,
          color: Colors.blue,
        ),
        VerticalDivider(
          color: Colors.red,
        ),
        Container(
          width: 200,
          color: Colors.yellow,
        ),
        VerticalDivider(
          color: Colors.red,
        ),
        Container(
          width: 200,
          color: Colors.black,
        ),
        VerticalDivider(
          color: Colors.red,
        ),
        Container(
          width: 200,
          color: Colors.purple,
        ),
        VerticalDivider(
          color: Colors.red,
        ),
      ],
    );
  }
}

class DynamicList extends StatelessWidget {
  final List<String> items;

  DynamicList({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
        leading: BackButton(),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text('${items[index]}'));
        },
      ),
    );
  }
}
