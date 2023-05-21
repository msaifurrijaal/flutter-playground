import 'package:flutter/material.dart';

class SwitchApp extends StatefulWidget {
  const SwitchApp({super.key});

  @override
  State<SwitchApp> createState() => _SwitchAppState();
}

class _SwitchAppState extends State<SwitchApp> {
  bool statusSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch"),
      ),
      body: Center(
        child: Column(
          children: [
            Switch(
                value: statusSwitch,
                onChanged: (value) {
                  setState(() {
                    statusSwitch = !statusSwitch;
                  });
                  print(statusSwitch);
                }),
            if (statusSwitch == true) Text("Switch On") else Text("Switch Off")
          ],
        ),
      ),
    );
  }
}
