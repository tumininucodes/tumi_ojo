import 'package:flutter/material.dart';

Padding dontBeShyBox({required double fontSize}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Feel free to get in touch with me. I am always "
          "open to discussing new projects, creative "
          "ideas or opportunities.",
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
          ),
        ),
      ],
    ),
  );
}
