import 'package:flutter/material.dart';
import 'package:tumi_ojo/utils/constants.dart';

import 'more_about_me_screen.dart';

Padding buildMoreInfoButton(context, {required double fontSize}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: OutlinedButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MoreAboutMeScreen()));
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
              "MORE ABOUT ME",
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
