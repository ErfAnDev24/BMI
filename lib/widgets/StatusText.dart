import 'package:flutter/material.dart';

class StatusText extends StatelessWidget {
  String message;

  StatusText(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '$message',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(3, 156, 8, 1)),
      ),
    );
  }
}
