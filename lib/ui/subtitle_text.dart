import 'package:flutter/material.dart';

Padding subTitleText(String title, {required double fontSize}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Text(
      title,
      style: TextStyle(color: Colors.white, fontSize: fontSize),
    ),
  );
}
