import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function selectHandler;

  const MyButton(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text('custom button txt'),
        color: Colors.blue,
        textColor: Colors.red,
        onPressed: selectHandler,
      ),
    );
  }
}
