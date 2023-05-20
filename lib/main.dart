import 'package:belajar_widget/image_widget.dart';
import 'package:belajar_widget/latihan_appbar.dart';
import 'package:belajar_widget/latihan_date_format.dart';
import 'package:belajar_widget/latihan_extract_widget.dart';
import 'package:belajar_widget/latihan_mapping.dart';
import 'package:belajar_widget/latihan_statefull.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Widget',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: AppBarApp(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Widget"),
      ),
      body: Center(
        child: Text(
          'Welcome to my Flutter App!',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
