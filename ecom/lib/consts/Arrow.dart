import 'package:flutter/material.dart';

class CustArrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Icon(
        Icons.chevron_left,
        color: Colors.black,
        size: 20.0,
      ),
    );
  }
}
