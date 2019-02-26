import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Grid View'),),
      // body: GridView.count(
      //   padding: const EdgeInsets.all(20.0),
      //   crossAxisSpacing: 10.0, // 每隔的距离
      //   crossAxisCount: 3, // 每行显示的列
      //   children: <Widget>[
      //     const Text('item 1'),
      //     const Text('item 2'),
      //     const Text('item 3'),
      //     const Text('item 4'),
      //     const Text('item 5'),
      //     const Text('item 6'),
      //     const Text('item 7'),
      //   ],
      // ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 2.0,
          childAspectRatio: 1.5,
        ),
        children: <Widget>[
          GestureDetector(child: Image.network('http://img5.mtime.cn/mg/2019/02/19/100707.91094900.jpg',fit: BoxFit.cover,),onTap: (){
              print('http://img5.mtime.cn/mg/2019/02/19/100707.91094900.jpg');
          },),
          
          Image.network('http://img5.mtime.cn/mg/2019/02/19/090707.96767250.jpg',fit: BoxFit.cover),
          Image.network('http://img5.mtime.cn/mg/2019/02/19/082515.90870385.jpg',fit: BoxFit.cover),
          Image.network('http://img5.mtime.cn/mg/2019/02/18/231511.81463290.jpg',fit: BoxFit.cover),
          Image.network('http://img5.mtime.cn/mg/2019/02/18/223522.69199816.jpg',fit: BoxFit.cover),
          Image.network('http://img5.mtime.cn/mg/2019/02/18/220321.40857098.jpg',fit: BoxFit.cover),
        ],
      ),
    );
  }
}