import 'package:flutter/material.dart';
import 'package:tumi_ojo/utils/constants.dart';

Text buildNameText({required double fontSize}) {
  return Text(
    "- Hi!👋🏾\n I'm Tumininu Ojo.",
    style: TextStyle(fontSize: fontSize, color: deepYellow),
  );
}
