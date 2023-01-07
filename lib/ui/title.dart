import 'package:flutter/material.dart';

Row buildTitleText({required double fontSize}) {
  return Row(
    children: [
      const SizedBox(
        width: 25,
      ),
      Expanded(
        child: Text(
          "I'M A SOFTWARE ENGINEER",
          style: TextStyle(fontSize: fontSize, color: Colors.white),
        ),
      ),
    ],
  );
}
