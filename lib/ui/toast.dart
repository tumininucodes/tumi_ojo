import 'package:flutter/material.dart';
import 'package:tumi_ojo/utils/constants.dart';

Widget toast = Container(
  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(25.0),
    color: deepYellow,
  ),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: const [
      Icon(Icons.check),
      SizedBox(
        width: 12.0,
      ),
      Text("Email address has been copied to clipboard"),
    ],
  ),
);
