import 'package:flutter/material.dart';

class TabBarApp extends StatelessWidget {
  List<Tab> myTab = [
    Tab(
      text: "Tab 1",
    ),
    Tab(
      text: "Tab 2",
    ),
    Tab(
      text: "Tab 3",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTab.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("My TabBar"),
          bottom: TabBar(tabs: myTab),
        ),
        body: TabBarView(children: [
          Center(
            child: Text("Tab 1"),
          ),
          Center(
            child: Text("Tab 2"),
          ),
          Center(
            child: Text("Tab 3"),
          )
        ]),
      ),
    );
  }
}
