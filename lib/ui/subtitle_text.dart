import 'package:flutter/material.dart';

Padding subTitleText(String title) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Text(
      title,
      style: const TextStyle(color: Colors.white, fontSize: 25),
    ),
  );
}
