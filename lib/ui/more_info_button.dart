import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:tumi_ojo/utils/constants.dart';

Padding buildMoreInfoButton(context, {required double fontSize}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: OutlinedButton(
      onPressed: () {
        js.context.callMethod('open', [
          'https://drive.google.com/file/d/1WD_pbHFiqbc4PKWhOJdTs2T9niXgfbSo/view?usp=sharing'
        ]);
      },
      style: OutlinedButton.styleFrom(
        foregroundColor: deepYellow,
        side: const BorderSide(width: 1.0, color: deepYellow),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: SizedBox(
        width: 500,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "More about me",
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
              ),
            ),
          ),
          const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          )
        ]),
      ),
    ),
  );
}
