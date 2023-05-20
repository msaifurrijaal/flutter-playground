import 'package:flutter/material.dart';

class MappingApp extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Shandika",
      "Age": 23,
      "favColor": ["Black", "Red", "Green"]
    },
    {
      "Name": "Indah",
      "Age": 25,
      "favColor": ["White", "Red", "Blue"]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mapping App"),
      ),
      body: ListView(
        children: myList.map((data) {
          List myFavColor = data["favColor"];
          return Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(),
                      Column(
                        children: [
                          Text("Name : ${data['Name']}"),
                          Text("Umur : ${data['Age']}")
                        ],
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: myFavColor.map((color) {
                        return Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                          color: Colors.green,
                          padding: EdgeInsets.all(8),
                          child: Text(color),
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
