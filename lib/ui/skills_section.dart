import 'package:flutter/material.dart';

import '../extensions/height.dart';

Row buildSkillsSection() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              SizedBox(
                child: Image.asset("assets/android.png"),
                height: 50,
              ),
              height(10),
              const Text(
                "ANDROID",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          height(40),
          Column(
            children: [
              SizedBox(
                child: Image.asset("assets/swift.png"),
                height: 50,
              ),
              height(10),
              const Text(
                "SWIFTUI",
                style: TextStyle(color: Colors.white),
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
                height: 50,
              ),
              height(10),
              const Text(
                "FLUTTER",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          height(40),
          Column(
            children: [
              SizedBox(
                child: Image.asset("assets/dart.png"),
                height: 50,
              ),
              height(10),
              const Text(
                "DART",
                style: TextStyle(color: Colors.white),
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
                height: 50,
              ),
              height(10),
              const Text(
                "COMPOSE",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          height(40),
          Column(
            children: [
              SizedBox(
                child: Image.asset("assets/java.png"),
                height: 50,
              ),
              height(10),
              const Text(
                "JAVA",
                style: TextStyle(color: Colors.white),
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
                child: Image.asset("assets/kotlin.png"),
                height: 50,
              ),
              height(10),
              const Text(
                "KOTLIN",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          height(40),
          Column(
            children: [
              SizedBox(
                child: Image.asset("assets/python.png"),
                height: 50,
              ),
              height(10),
              const Text(
                "PYTHON",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ],
      )
    ],
  );
}
