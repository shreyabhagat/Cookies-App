import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;

  MyTabBar({this.title1, this.title2, this.title3});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: Color(0xffb54104),
      labelColor: Color(0xffb54104),
      labelStyle: TextStyle(
        fontSize: 27,
      ),
      unselectedLabelColor: Colors.black26,
      labelPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      isScrollable: true,
      indicatorSize: TabBarIndicatorSize.label,
      tabs: <Widget>[
        Tab(
          child: Text(title1),
        ),
        Tab(
          child: Text(title2),
        ),
        Tab(
          child: Text(title3),
        )
      ],
    );
  }
}
