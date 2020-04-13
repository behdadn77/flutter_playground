import 'package:flutter/material.dart';

class MyCustomWidget extends StatelessWidget {

  final String passedTxt;

  const MyCustomWidget(this.passedTxt) ;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        passedTxt,
        style: TextStyle(fontSize: 36),
        textAlign: TextAlign.center,
      ),
    );
  }
}
