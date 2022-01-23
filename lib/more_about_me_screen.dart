// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tumi_ojo/constants.dart';
import 'package:tumi_ojo/extensions/height.dart';
import 'extensions/width.dart';

class MoreAboutMeScreen extends StatelessWidget {
  const MoreAboutMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              aboutMeText(),
              height(50),
              subTitleText("PERSONAL INFO"),
              infoDetails(),
              height(50),
              subTitleText("MY SKILLS"),
              height(30),
              skillsSection(),
              height(50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 300),
                child: Divider(
                  color: greyColor,
                ),
              ),
              height(50),
              contactText(),
              height(50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [dontBeShyBox(), width(20), formBox()],
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: darkBackground,
    );
  }

  Expanded formBox() {
    return Expanded(
      flex: 3,
      child: Column(
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
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        hintText: "YOUR NAME",
                        isDense: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: deepYellow,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintStyle:
                            TextStyle(color: greyTextColor, fontSize: 12),
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
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        hintText: "YOUR EMAIL",
                        isDense: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: deepYellow,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintStyle:
                            TextStyle(color: greyTextColor, fontSize: 12),
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
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    hintText: "YOUR SUBJECT",
                    isDense: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: deepYellow,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintStyle: TextStyle(color: greyTextColor, fontSize: 12),
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
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    hintText: "YOUR MESSAGE",
                    isDense: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: deepYellow,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintStyle: TextStyle(color: greyTextColor, fontSize: 12),
                    fillColor: greyColor,
                    filled: true),
              )),
          height(20),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              primary: deepYellow,
              side: const BorderSide(width: 1.0, color: deepYellow),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            ),
            child: SizedBox(
              width: 200,
              child:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    "SEND MESSAGE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(
                  Icons.send_rounded,
                  color: deepYellow,
                )
              ]),
            ),
          )
        ],
      ),
    );
  }

  Expanded dontBeShyBox() {
    return Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "DON'T BE SHY!",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "OpenSans",
                fontSize: 28,
                fontWeight: FontWeight.bold),
          ),
          height(20),
          Text(
            "Feel free to get in touch with me. I am always "
            "open to discussing new projects, creative "
            "ideas or opportunities to be part of your visions.",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "OpenSans",
              fontSize: 15,
            ),
          ),
          height(20),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: deepYellow,
                size: 40,
              ),
              width(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("ADDRESS POINT",
                      style: TextStyle(
                          color: greyTextColor,
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  Text(
                    "Lagos, Nigeria",
                    style:
                        TextStyle(color: Colors.white, fontFamily: "OpenSans"),
                  ),
                ],
              )
            ],
          ),
          height(20),
          Row(
            children: [
              Icon(Icons.mail_rounded, color: deepYellow, size: 40),
              width(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("MAIL ME",
                      style: TextStyle(
                          color: greyTextColor,
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  Text(
                    "oluwatumininuojo25@gmail.com",
                    style:
                        TextStyle(color: Colors.white, fontFamily: "OpenSans"),
                  ),
                ],
              )
            ],
          ),
          height(20),
          Row(
            children: [
              Icon(Icons.call, color: deepYellow, size: 40),
              width(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("CALL ME",
                      style: TextStyle(
                          color: greyTextColor,
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  Text(
                    "+234 813 846 9757",
                    style:
                        TextStyle(color: Colors.white, fontFamily: "OpenSans"),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Row skillsSection() {
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
                  height: 100,
                ),
                height(10),
                Text(
                  "ANDROID",
                  style: TextStyle(fontFamily: "OpenSans", color: Colors.white),
                )
              ],
            ),
            height(40),
            Column(
              children: [
                SizedBox(
                  child: Image.asset("assets/swift.png"),
                  height: 100,
                ),
                height(10),
                Text(
                  "SWIFTUI",
                  style: TextStyle(fontFamily: "OpenSans", color: Colors.white),
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
                  height: 100,
                ),
                height(10),
                Text(
                  "FLUTTER",
                  style: TextStyle(fontFamily: "OpenSans", color: Colors.white),
                )
              ],
            ),
            height(40),
            Column(
              children: [
                SizedBox(
                  child: Image.asset("assets/dart.png"),
                  height: 100,
                ),
                height(10),
                Text(
                  "DART",
                  style: TextStyle(fontFamily: "OpenSans", color: Colors.white),
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
                  height: 100,
                ),
                height(10),
                Text(
                  "JETPACK COMPOSE",
                  style: TextStyle(fontFamily: "OpenSans", color: Colors.white),
                )
              ],
            ),
            height(40),
            Column(
              children: [
                SizedBox(
                  child: Image.asset("assets/java.png"),
                  height: 100,
                ),
                height(10),
                Text(
                  "JAVA",
                  style: TextStyle(fontFamily: "OpenSans", color: Colors.white),
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
                  height: 100,
                ),
                height(10),
                Text(
                  "KOTLIN",
                  style: TextStyle(fontFamily: "OpenSans", color: Colors.white),
                )
              ],
            ),
            height(40),
            Column(
              children: [
                SizedBox(
                  child: Image.asset("assets/python.png"),
                  height: 100,
                ),
                height(10),
                Text(
                  "PYTHON",
                  style: TextStyle(fontFamily: "OpenSans", color: Colors.white),
                )
              ],
            ),
          ],
        )
      ],
    );
  }

  Center infoDetails() {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            height(20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Spacer(
                  flex: 2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "OpenSans",
                                fontSize: 16),
                            children: const [
                          TextSpan(text: "First Name: "),
                          TextSpan(
                              text: "Oluwatumininu",
                              style: TextStyle(color: Colors.white)),
                        ])),
                    height(20),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "OpenSans",
                                fontSize: 16),
                            children: const [
                          TextSpan(text: "Age: "),
                          TextSpan(
                              text: "27Years",
                              style: TextStyle(color: Colors.white)),
                        ])),
                    height(20),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "OpenSans",
                                fontSize: 16),
                            children: const [
                          TextSpan(text: "Freelance: "),
                          TextSpan(
                              text: "Available",
                              style: TextStyle(color: Colors.white)),
                        ])),
                    height(20),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "OpenSans",
                                fontSize: 16),
                            children: const [
                          TextSpan(text: "Phone: "),
                          TextSpan(
                              text: "+2348138469757",
                              style: TextStyle(color: Colors.white)),
                        ])),
                    height(20),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "OpenSans",
                                fontSize: 16),
                            children: const [
                          TextSpan(text: "Twitter: "),
                          TextSpan(
                              text: "@tumiOnIt",
                              style: TextStyle(color: Colors.white)),
                        ])),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "OpenSans",
                                fontSize: 16),
                            children: const [
                          TextSpan(text: "Last Name: "),
                          TextSpan(
                              text: "Ojo",
                              style: TextStyle(color: Colors.white)),
                        ])),
                    height(20),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "OpenSans",
                                fontSize: 16),
                            children: const [
                          TextSpan(text: "Nationality: "),
                          TextSpan(
                              text: "Nigerian",
                              style: TextStyle(color: Colors.white)),
                        ])),
                    height(20),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "OpenSans",
                                fontSize: 16),
                            children: const [
                          TextSpan(text: "Address: "),
                          TextSpan(
                              text: "Lagos",
                              style: TextStyle(color: Colors.white)),
                        ])),
                    height(20),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "OpenSans",
                                fontSize: 16),
                            children: const [
                          TextSpan(text: "Email: "),
                          TextSpan(
                              text: "oluwatumininuojo25@gmail.com",
                              style: TextStyle(color: Colors.white)),
                        ])),
                    height(20),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "OpenSans",
                                fontSize: 16),
                            children: const [
                          TextSpan(text: "Languages: "),
                          TextSpan(
                              text: "English, Yoruba",
                              style: TextStyle(color: Colors.white)),
                        ])),
                  ],
                ),
                Spacer(
                  flex: 2,
                )
              ],
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 300),
              child: Divider(
                color: greyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Center subTitleText(String title) {
    return Center(
        child: Text(
      title,
      style: TextStyle(
          color: Colors.white,
          fontFamily: "OpenSans",
          fontSize: 30,
          fontWeight: FontWeight.bold),
    ));
  }

  Center contactText() {
    return Center(
      child: Stack(children: [
        Positioned(
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              "CONTACT",
              style: TextStyle(
                  color: deepGreyColor,
                  fontFamily: "OpenSans",
                  fontSize: 100,
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 38),
            child: RichText(
                text: const TextSpan(
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    children: [
                  TextSpan(
                      text: "GET IN ",
                      style: TextStyle(
                          fontFamily: "OpenSans", fontWeight: FontWeight.w900)),
                  TextSpan(
                      text: "TOUCH",
                      style: TextStyle(
                          color: deepYellow,
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.w900)),
                ])),
          ),
        ),
      ]),
    );
  }

  Center aboutMeText() {
    return Center(
      child: Stack(children: [
        Positioned(
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              "ABOUT ME",
              style: TextStyle(
                  color: deepGreyColor,
                  fontFamily: "OpenSans",
                  fontSize: 100,
                  fontWeight: FontWeight.w900),
            ),
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 38),
            child: RichText(
                text: const TextSpan(
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    children: [
                  TextSpan(
                      text: "ABOUT ",
                      style: TextStyle(
                          fontFamily: "OpenSans", fontWeight: FontWeight.w900)),
                  TextSpan(
                      text: "ME",
                      style: TextStyle(
                          color: deepYellow,
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.w900)),
                ])),
          ),
        ),
      ]),
    );
  }
}
