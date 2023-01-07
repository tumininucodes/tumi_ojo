import 'package:flutter/material.dart';

OutlinedButton buildMoreInfoButton() {
  return OutlinedButton(
    onPressed: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const MoreAboutMeScreen()));
    },
    style: OutlinedButton.styleFrom(
      primary: deepYellow,
      side: const BorderSide(width: 1.0, color: deepYellow),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
    child: SizedBox(
      width: 250,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
        Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            "MORE ABOUT ME",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward,
          color: Colors.white,
        )
      ]),
    ),
  );
}
