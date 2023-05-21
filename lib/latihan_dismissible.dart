import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class DismissibleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Faker faker = new Faker();
    return Scaffold(
      appBar: AppBar(
        title: Text("Dismissible App"),
      ),
      body: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          itemCount: 100,
          itemBuilder: (context, index) {
            return Dismissible(
              onDismissed: (direction) {
                print("DISMISSED");
                if (direction == DismissDirection.endToStart) {
                  print("END TO START");
                } else {
                  print("START TO END");
                }
              },
              confirmDismiss: (direction) {
                return showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Confirm"),
                        content: Text("Are you sure to delete this item?"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              child: Text("NO")),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(true);
                              },
                              child: Text("YES"))
                        ],
                      );
                    });
              },
              key: Key(index.toString()),
              // direction: DismissDirection.endToStart,
              background: Container(
                child: Icon(Icons.delete),
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 20),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  child: Center(
                    child: Text("${index + 1}"),
                  ),
                ),
                title: Text(faker.person.name()),
                subtitle: Text(faker.lorem.sentence()),
              ),
            );
          }),
    );
  }
}
