import 'package:flutter/material.dart';
import 'package:tumi_ojo/extensions/height.dart';
import 'package:tumi_ojo/extensions/width.dart';
import 'package:tumi_ojo/utils/constants.dart';

Column formBox() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Expanded(
            child: SizedBox(
              child: TextField(
                cursorColor: deepYellow,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    hintText: "YOUR NAME",
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
                        const TextStyle(color: greyTextColor, fontSize: 12),
                    fillColor: greyColor,
                    filled: true),
              ),
            ),
          ),
          width(20),
          Expanded(
            child: SizedBox(
              child: TextField(
                cursorColor: deepYellow,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    hintText: "YOUR EMAIL",
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
                        const TextStyle(color: greyTextColor, fontSize: 12),
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
            cursorColor: deepYellow,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                hintText: "YOUR SUBJECT",
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
                hintStyle: const TextStyle(color: greyTextColor, fontSize: 12),
                fillColor: greyColor,
                filled: true),
          )),
      height(20),
      SizedBox(
          width: double.infinity,
          child: TextField(
            cursorColor: deepYellow,
            maxLines: 9,
            decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                hintText: "YOUR MESSAGE",
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
                hintStyle: const TextStyle(color: greyTextColor, fontSize: 12),
                fillColor: greyColor,
                filled: true),
          )),
      height(20),
      Center(
        child: OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            primary: deepYellow,
            side: const BorderSide(width: 1.0, color: deepYellow),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          child: SizedBox(
            width: double.infinity,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "SEND MESSAGE",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Icon(
                    Icons.send_rounded,
                    color: deepYellow,
                  )
                ]),
          ),
        ),
      )
    ],
  );
}
