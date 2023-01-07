import 'package:flutter/material.dart';

Padding buildDescription({required double fontSize}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Text(
        "I TURN IDEAS INTO REALITY USING CODE. I THINK I MIGHT BE A FEATURE "
        "SHIPPING BUG IN THE MATRIX. I LOVE BUILDING GREAT PRODUCTS THAT ACTUALLY "
        "SOLVES PEOPLE'S PROBLEM. MOST IMPORTANTLY, I WANT TO BE THE CHANGE THAT I "
        "WANT TO SEE IN THE WORLD.",
        softWrap: true,
        style: TextStyle(fontSize: fontSize, color: Colors.white),
        textAlign: TextAlign.start),
  );
}
