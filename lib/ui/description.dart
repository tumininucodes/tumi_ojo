import 'package:flutter/material.dart';

Padding buildDescription({required double fontSize}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Text(
        "I turn ideas into reality using code. I think I might be a feature "
        "shipping bug in the matrix. I love building great products that actually "
        "solves people's problem. most importantly, I want to be the change that I "
        "want to see in the world.",
        softWrap: true,
        style: TextStyle(fontSize: fontSize, color: Colors.white),
        textAlign: TextAlign.start),
  );
}
