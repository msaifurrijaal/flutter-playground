import 'package:flutter/material.dart';

class DateFormatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Format App"),
      ),
      body: Center(
        child: Text(
          DateTime.now().toString(),
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
