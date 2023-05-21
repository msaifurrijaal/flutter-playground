import 'package:flutter/material.dart';

class DialogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("CONFIRM"),
                  content: Text("Are you sure to delete this item?"),
                  actions: [
                    TextButton(onPressed: () {}, child: Text("No")),
                    TextButton(onPressed: () {}, child: Text("Yes"))
                  ],
                );
              });
        },
        child: Icon(Icons.delete),
      ),
    );
  }
}
