import 'package:flutter/material.dart';

class DynamicApp extends StatefulWidget {
  @override
  State<DynamicApp> createState() => _DynamicAppState();
}

class _DynamicAppState extends State<DynamicApp> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic App"),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          counter.toString(),
          style: TextStyle(fontSize: 20 + double.parse(counter.toString())),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: () {
                  if (counter != 1) {
                    setState(() {
                      counter--;
                    });
                  }
                },
                child: Icon(Icons.remove)),
            TextButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Icon(Icons.add)),
          ],
        )
      ]),
    );
  }
}
