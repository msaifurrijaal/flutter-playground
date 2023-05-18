import 'package:flutter/material.dart';

class ImageWidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test Aja"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 500,
          color: Colors.amber,
          child: Image(fit: BoxFit.cover, image: AssetImage("images/gambar.jpg")
              // image: NetworkImage("https://picsum.photos/200/300"),
              ),
        ),
      ),
    );
  }
}
