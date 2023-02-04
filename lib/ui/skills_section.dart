import 'package:flutter/material.dart';

import '../extensions/height.dart';

Row buildSkillsSection({required double iconSize, required double fontSize}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              SizedBox(
                child: Image.asset("assets/kotlin.png"),
                height: iconSize,
                width: iconSize,
              ),
              height(10),
              Text(
                "Kotlin",
                style: TextStyle(color: Colors.white, fontSize: fontSize),
              )
            ],
          ),
          height(40),
          Column(
            children: [
              SizedBox(
                child: Image.asset("assets/swift.png"),
                height: iconSize,
                width: iconSize,
              ),
              height(10),
              Text(
                "SwiftUI",
                style: TextStyle(color: Colors.white, fontSize: fontSize),
              )
            ],
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              SizedBox(
                child: Image.asset("assets/flutter.png"),
                height: iconSize,
                width: iconSize,
              ),
              height(10),
              Text(
                "Flutter",
                style: TextStyle(color: Colors.white, fontSize: fontSize),
              )
            ],
          ),
          height(40),
          Column(
            children: [
              SizedBox(
                child: Image.asset(
                  "assets/dart.png",
                  scale: 2,
                ),
                height: iconSize,
                width: iconSize,
              ),
              height(10),
              Text(
                "Dart",
                style: TextStyle(color: Colors.white, fontSize: fontSize),
              )
            ],
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              SizedBox(
                child: Image.asset("assets/compose.png"),
                height: iconSize,
                width: iconSize,
              ),
              height(10),
              Text(
                "Compose",
                style: TextStyle(color: Colors.white, fontSize: fontSize),
              )
            ],
          ),
          height(40),
          Column(
            children: [
              SizedBox(
                child: Image.asset("assets/java.png"),
                height: iconSize,
                width: iconSize,
              ),
              height(10),
              Text(
                "Java",
                style: TextStyle(color: Colors.white, fontSize: fontSize),
              )
            ],
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              SizedBox(
                child: Image.asset("assets/golang.png"),
                height: iconSize,
                width: iconSize,
              ),
              height(10),
              Text(
                "Go",
                style: TextStyle(color: Colors.white, fontSize: fontSize),
              )
            ],
          ),
          height(40),
          Column(
            children: [
              SizedBox(
                child: Image.asset("assets/rust.png"),
                height: iconSize,
                width: iconSize,
              ),
              height(10),
              Text(
                "Rust",
                style: TextStyle(color: Colors.white, fontSize: fontSize),
              )
            ],
          ),
        ],
      )
    ],
  );
}
