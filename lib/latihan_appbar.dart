import 'package:flutter/material.dart';

class AppBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("AppBar App"),
        actions: [Icon(Icons.dangerous), Icon(Icons.settings)],
      ),
    );
  }
}
