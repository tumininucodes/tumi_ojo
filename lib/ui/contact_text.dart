import 'package:flutter/material.dart';
import 'package:tumi_ojo/utils/constants.dart';

Padding contactText({required double fontSize}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      margin: const EdgeInsets.only(top: 10),
      child: RichText(
          text: TextSpan(
              style: TextStyle(fontSize: fontSize, color: Colors.white),
              children: const [
            TextSpan(
                text: "GET IN ", style: TextStyle(fontFamily: 'BergenSans')),
            TextSpan(
                text: "TOUCH",
                style: TextStyle(color: deepYellow, fontFamily: 'BergenSans')),
          ])),
    ),
  );
}
