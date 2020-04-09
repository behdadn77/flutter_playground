import 'package:flutter/material.dart';

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
            Text(duckText),
            Text('some random text'),
            Text('some random text'),
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
            RaisedButton(
              child: Text('button txt'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
