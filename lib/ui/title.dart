import 'package:flutter/material.dart';

Row buildTitleText({required double fontSize}) {
  return Row(
    children: [
      const SizedBox(
        width: 25,
      ),
      Expanded(
        child: Text(
          "I'm a Software Engineer",
          style: TextStyle(fontSize: fontSize, color: Colors.white),
        ),
      ),
    ],
  );
}
