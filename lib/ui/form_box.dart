import 'package:flutter/material.dart';
import 'package:tumi_ojo/extensions/height.dart';
import 'package:tumi_ojo/extensions/width.dart';
import 'package:tumi_ojo/utils/constants.dart';

Padding formBox({required double fontSize, required double btnFontSize}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                child: TextField(
                  textCapitalization: TextCapitalization.words,
                  style: TextStyle(color: Colors.white, fontSize: fontSize),
                  keyboardType: TextInputType.name,
                  cursorColor: deepYellow,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      hintText: "Your name",
                      isDense: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: deepYellow,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hintStyle:
                          TextStyle(color: greyTextColor, fontSize: fontSize),
                      fillColor: greyColor,
                      filled: true),
                ),
              ),
            ),
            width(20),
            Expanded(
              child: SizedBox(
                child: TextField(
                  style: TextStyle(color: Colors.white, fontSize: fontSize),
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: deepYellow,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      hintText: "Your email",
                      isDense: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: deepYellow,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hintStyle:
                          TextStyle(color: greyTextColor, fontSize: fontSize),
                      fillColor: greyColor,
                      filled: true),
                ),
              ),
            ),
          ],
        ),
        height(20),
        SizedBox(
            width: double.infinity,
            child: TextField(
              textCapitalization: TextCapitalization.characters,
              style: TextStyle(color: Colors.white, fontSize: fontSize),
              cursorColor: deepYellow,
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  hintText: "Your subject",
                  isDense: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: deepYellow,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintStyle:
                      TextStyle(color: greyTextColor, fontSize: fontSize),
                  fillColor: greyColor,
                  filled: true),
            )),
        height(20),
        SizedBox(
            width: double.infinity,
            child: TextField(
              textCapitalization: TextCapitalization.characters,
              style: TextStyle(color: Colors.white, fontSize: fontSize),
              cursorColor: deepYellow,
              maxLines: 9,
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  hintText: "Your message",
                  isDense: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: deepYellow,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintStyle:
                      TextStyle(color: greyTextColor, fontSize: fontSize),
                  fillColor: greyColor,
                  filled: true),
            )),
        height(20),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                primary: deepYellow,
                side: const BorderSide(width: 1.0, color: deepYellow),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              child: SizedBox(
                width: double.infinity,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Send message",
                      style:
                          TextStyle(color: Colors.white, fontSize: btnFontSize),
                    ),
                  ),
                  const Icon(
                    Icons.send_rounded,
                    color: deepYellow,
                  )
                ]),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
