import 'package:flutter/material.dart';

Padding dontBeShyBox({required double fontSize}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "FEEL FREE TO GET IN TOUCH WITH ME. I AM ALWAYS "
          "OPEN TO DISCUSSING NEW PROJECTS, CREATIVE "
          "IDEAS OR OPPORTUNITIES.",
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
          ),
        ),
      ],
    ),
  );
}
