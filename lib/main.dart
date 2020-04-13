import 'package:flutter/material.dart';

import 'MyCustomWidget.dart';
import 'MyButton.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void duckIt() {
    print('duuuuuck');
    setState(() {
      duckText = "now ducking";
    });
  }

  var duckText = "default";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Playground home'),
        ),
        body: Column(
          children: [
            MyCustomWidget(duckText),
            MyCustomWidget('some random text'),
            Text('some random text'),
            Text(duckText),
            RaisedButton(
              child: Text('button txt'),
              onPressed: duckIt,
            ),
            RaisedButton(
              child: Text('button txt'),
              onPressed: () {
                setState(() {
                  duckText = "wertyuiop";
                });
              },
            ),
            MyButton(duckIt),
          ],
        ),
      ),
    );
  }
}
