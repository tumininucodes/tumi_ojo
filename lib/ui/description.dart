import 'package:flutter/material.dart';

Padding buildDescription() {
  return const Padding(
    padding: EdgeInsets.all(20.0),
    child: Text(
        "I TURN IDEAS INTO REALITY USING CODE. I THINK I MIGHT BE A FEATURE "
        "SHIPPING BUG IN THE MATRIX. I LOVE BUILDING GREAT PRODUCTS THAT ACTUALLY "
        "SOLVES PEOPLE'S PROBLEM. MOST IMPORTANTLY, I WANT TO BE THE CHANGE THAT I "
        "WANT TO SEE IN THE WORLD.",
        softWrap: true,
        style: TextStyle(fontSize: 16, color: Colors.white),
        textAlign: TextAlign.start),
  );
}
