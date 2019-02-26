import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'text.dart';
import 'container.dart';
import 'image.dart';
import 'listView.dart';
import 'Padding.dart';
import 'MyList.dart';
import 'MyGridView.dart';
import 'MyRow.dart';
import 'MyColumn.dart';
import 'Stack.dart';
import 'PositionWidget.dart';
import 'Card.dart';
import 'Navigator.dart';
import 'Navigator2.dart';
import 'PageValue.dart';
import 'tabbarApp.dart';
import 'constants.dart' show AppColors;
import 'wechatApp.dart';

Map<String, Widget> dict = {
  '/text': TextApp(),
  '/container': ContainerApp(),
  '/padding': LYPadding(),
  '/listView': ListViewApp(),
  '/dynamic List': DynamicList(
    items: ['1', '2', '3'],
  ),
  '/RandomWords': RandomWords(),
  '/image': ImageApp(),
  '/GridView': MyGridView(),
  '/Row': MyRow(),
  '/Column': MyColumn(),
  '/Stack': LYStack(),
  '/positioned': PositionWidget(),
  '/Card': CardApp(),
  '/Navigator': MyNaviApp(),
  '/Navigator2': MyNaviPost(),
  '/PageValue': PageValue(),
  '/TabApp': TabBarApp(),
  '/wechatApp': HomePage(),
};

void main() => runApp(DemoApp(
      items: dict,
    ));

class DemoApp extends StatelessWidget {
  Map<String, Widget> items;
  DemoApp({Key key, @required this.items}) : super(key: key);

  // final Map <String,WidgetBuilder> =

  @override
  Widget build(BuildContext context) {
    Map<String, WidgetBuilder> routes = {};

    // print(items.keys);
    for (String key in items.keys) {
      Widget value = items[key];
      routes[key] = (_) => value;
    }

    return MaterialApp(
        title: 'Flutter Study',
        theme: ThemeData(primaryColor: Color(AppColors.appBarColor),cardColor:Color(AppColors.appBarColor)),
        home: MyHomePage(
          title: 'HomePage',
          dict: items,
        ),
        routes: routes);
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.dict}) : super(key: key);
  final String title;
  Map<String, Widget> dict;

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> items = [];
    for (String key in dict.keys) {
      items.add(key);
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return ListItem(
                  index: index,
                  title: items[index],
                  onpress: () {
                    _NavigateToPage(context, items[index]);
                  },
                );
              },
            )));
  }
}

class ListItem extends StatelessWidget {
  final int index;
  final String title;
  final VoidCallback onpress;
  ListItem({Key key, this.index, this.title, this.onpress}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: onpress,
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: Colors.red, fontSize: 20.0),
            ),
          ),
        ),
        Divider(
          color: Colors.green,
        )
      ],
    );
  }
}

void _NavigateToPage(BuildContext context, String page) {
  print(page);
  Navigator.of(context).pushNamed('$page');
}
