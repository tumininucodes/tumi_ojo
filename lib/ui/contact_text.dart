import 'package:flutter/material.dart';
import 'package:tumi_ojo/utils/constants.dart';

Padding contactText() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      margin: const EdgeInsets.only(top: 10),
      child: RichText(
          text: const TextSpan(
              style: TextStyle(fontSize: 25, color: Colors.white),
              children: [
            TextSpan(
                text: "GET IN ", style: TextStyle(fontFamily: 'DotMatrix')),
            TextSpan(
                text: "TOUCH",
                style: TextStyle(color: deepYellow, fontFamily: 'DotMatrix')),
          ])),
    ),
  );
}
