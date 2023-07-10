import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Switch"),
      ),
      body: Center(
        child: Text("Switch App"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
    );
  }
}
