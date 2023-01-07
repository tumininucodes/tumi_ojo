import 'package:flutter/material.dart';

String screenType(context) {
  if (MediaQuery.of(context).size.width > 800) {
    return "desktop";
  } else {
    return "mobile";
  }
}
