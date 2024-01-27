import 'package:flutter/material.dart';

class RightShape extends StatelessWidget {
  double badWidth = 0;
  RightShape(this.badWidth, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: badWidth,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
