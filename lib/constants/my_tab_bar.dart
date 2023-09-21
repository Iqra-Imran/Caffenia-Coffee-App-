import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
          child: CustomScrollView(slivers: <Widget>[
            SliverAppBar(),
            new SliverFillRemaining(
              child: TabBarView(
                children: <Widget>[
                  Text("Tab 1"),
                  Text("Tab 2"),
                  Text("Tab 3"),
                ],
              ),
            ),
          ])),
    );
  }
}
