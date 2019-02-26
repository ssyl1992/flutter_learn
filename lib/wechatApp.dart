import 'package:flutter/material.dart';
import 'constants.dart' show Constants, AppColors, ActionVlaue;
import 'dart:math' as math;

class NavigationIconView {
  final BottomNavigationBarItem item;
  bool selected;

  NavigationIconView({
    Key key,
    IconData icon,
    IconData activeIcon,
    String title,
  }) : item = BottomNavigationBarItem(
            icon: Icon(
              icon,
            ),
            activeIcon: Icon(
              activeIcon,
            ),
            title: Text(
              title,
            ),
            backgroundColor: Colors.white);
}

class HomePage extends StatefulWidget {
  final Widget child;

  HomePage({Key key, this.child}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<NavigationIconView> items;
  int _currentIndex = 0;
  PageController _pageController;
  List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    items = <NavigationIconView>[
      NavigationIconView(
          title: '微信',
          icon: IconData(0xe600, fontFamily: Constants.IconFontFamily),
          activeIcon: IconData(0xe600, fontFamily: Constants.IconFontFamily)),
      NavigationIconView(
          title: '通讯录',
          icon: IconData(0xe6c2, fontFamily: Constants.IconFontFamily),
          activeIcon: IconData(0xe6c2, fontFamily: Constants.IconFontFamily)),
      NavigationIconView(
          title: '发现',
          icon: IconData(0xe746, fontFamily: Constants.IconFontFamily),
          activeIcon: IconData(0xe746, fontFamily: Constants.IconFontFamily)),
      NavigationIconView(
          title: '我',
          icon: IconData(0xe63b, fontFamily: Constants.IconFontFamily),
          activeIcon: IconData(0xe63b, fontFamily: Constants.IconFontFamily)),
    ];
//  初始化pageController
    _pageController = PageController(initialPage: _currentIndex);
    _pages = [
      Container(
        color: Color.fromARGB(255, math.Random().nextInt(255),
            math.Random().nextInt(255), math.Random().nextInt(255)),
      ),
      Container(
        color: Color.fromARGB(255, math.Random().nextInt(255),
            math.Random().nextInt(255), math.Random().nextInt(255)),
      ),
      Container(
        color: Color.fromARGB(255, math.Random().nextInt(255),
            math.Random().nextInt(255), math.Random().nextInt(255)),
      ),
      Container(
        color: Color.fromARGB(255, math.Random().nextInt(255),
            math.Random().nextInt(255), math.Random().nextInt(255)),
      ),
    ];
  }

  _buildPopMenuItem(IconData icondata, String title) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              icondata,
              color: Colors.white,
            ),
            Container(
              width: 12,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        // Divider(color: Colors.grey,),
      ],
    );
  }

  _buildPopMenu() {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return <PopupMenuItem<ActionVlaue>>[
          PopupMenuItem(
            child: _buildPopMenuItem(Icons.chat, '发起群聊'),
            value: ActionVlaue.GROUP_CHAT,
            height: 44,
          ),
          PopupMenuItem(
            child: _buildPopMenuItem(Icons.scanner, '扫一扫'),
            value: ActionVlaue.SCANNER,
          ),
          PopupMenuItem(
            child: _buildPopMenuItem(Icons.chat, '添加朋友'),
            value: ActionVlaue.ADD_FRIEND,
          ),
        ];
      },
      icon: Icon(Icons.add),
      onSelected: (ActionVlaue selected) {
        print('点击了$selected 功能');
      },
      offset: Offset(0, 100),
    );
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomBar = BottomNavigationBar(
      fixedColor: const Color(AppColors.TabIconActiveColor),
      items: items
          .map((NavigationIconView navigationView) => navigationView.item)
          .toList(),
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
        });
        print('tap $index item');
      },
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
    );

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('微信')),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('搜索按钮');
            },
          ),
          Container(
            width: 16,
          ),
          _buildPopMenu(),
          Container(
            width: 16,
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: PageView.builder(
        itemBuilder: (BuildContext context, int index) {
          return _pages[index];
        },
        controller: _pageController,
        itemCount: _pages.length,
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: bottomBar,
    );
  }
}
