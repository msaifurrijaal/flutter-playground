import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextFieldFitur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fitur TextField"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: TextField(
            autocorrect: false,
            autofocus: false,
            enableSuggestions: true,
          ),
        ),
      ),
    );
  }
}
