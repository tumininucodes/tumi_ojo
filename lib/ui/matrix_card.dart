import 'package:flutter/material.dart';

Expanded buildMatrixCard() {
  return Expanded(
    flex: 1,
    child: SizedBox(
      height: double.infinity,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 50),
        color: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        clipBehavior: Clip.antiAlias,
        child: Image.asset(
          "assets/tumi.png",
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
