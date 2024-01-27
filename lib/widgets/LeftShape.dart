import 'package:flutter/material.dart';

class LeftShape extends StatelessWidget {
  double goodWidth = 0;

  LeftShape(this.goodWidth, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: this.goodWidth,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
