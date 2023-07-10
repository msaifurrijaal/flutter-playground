import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        hintColor: Colors.red,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 16),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('My App'),
          backgroundColor: Theme.of(context).primaryColor),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, World!',
              style: Theme.of(context).textTheme.headline1,
            ),
            TextButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "This is a toast message",
                  toastLength:
                      Toast.LENGTH_SHORT, // Duration of the toast message
                  gravity: ToastGravity.BOTTOM, // Location of the toast message
                  backgroundColor:
                      Colors.white, // Background color of the toast
                  textColor: Colors.black, // Text color of the toast
                );
              },
              child: Text(
                'Click Me',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
