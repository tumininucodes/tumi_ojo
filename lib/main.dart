import 'dart:js' as js;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tumi_ojo/constants.dart';

import 'extensions/height.dart';
import 'extensions/width.dart';
import 'more_about_me_screen.dart';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
    theme: ThemeData(fontFamily: 'DotMatrix'),
    debugShowCheckedModeBanner: false,
    themeMode: ThemeMode.light,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: const [Text("<TUMI.DEV/>"), Spacer()],
        ),
        backgroundColor: Colors.black,
      ),
      body: buildContainer(),
    );
  }

  Container buildContainer() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildName(),
                  const SizedBox(
                    height: 20,
                  ),
                  buildTitle(),
                  const SizedBox(
                    height: 20,
                  ),
                  buildDescription(),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: buildMoreInfoButton(),
                  ),
                  height(20),
                  subTitleText("MY SKILLS"),
                  height(20),
                  skillsSection(),
                  height(20),
                  contactText(),
                  dontBeShyBox(),
                  height(20),
                  formBox()
                ],
              ),
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
      ),
    );
  }

  Row buildSocialMediaLinksButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Tooltip(
          message: "Github",
          child: InkWell(
            onTap: () {
              js.context
                  .callMethod('open', ['https://github.com/tumininucodes']);
            },
            child: SizedBox(
                height: 50,
                width: 50,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/github.png"),
                )),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Tooltip(
          message: 'Stackoverflow',
          child: InkWell(
            onTap: () {
              js.context.callMethod('open', [
                'https://stackoverflow.com/users/14202587/tumininucodes?tab=profile'
              ]);
            },
            child: SizedBox(
                height: 50,
                width: 50,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/stackoverflow.png"),
                )),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Tooltip(
          message: "LinkedIn",
          child: InkWell(
            onTap: () {
              js.context.callMethod(
                  'open', ['https://ng.linkedin.com/in/oluwatumininu-ojo']);
            },
            child: SizedBox(
                height: 30,
                width: 30,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/linkedin.png"),
                )),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Tooltip(
          message: "Twitter",
          child: InkWell(
            onTap: () {
              js.context.callMethod('open', ['https://twitter.com/tumi_ojo']);
            },
            child: SizedBox(
                height: 30,
                width: 30,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/twitter.png"),
                )),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Tooltip(
          message: 'oluwatumininuojo25@gmail.com',
          child: InkWell(
            onTap: () {
              fToast.showToast(
                child: toast,
                gravity: ToastGravity.BOTTOM,
                toastDuration: const Duration(seconds: 2),
              );
              Clipboard.setData(
                  const ClipboardData(text: "oluwatumininuojo25@gmail.com"));
            },
            child: SizedBox(
                height: 30,
                width: 30,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/gmail.png",
                  ),
                )),
          ),
        ),
      ],
    );
  }

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
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
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

  Padding buildDescription() {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Text(
          "I TURN IDEAS INTO REALITY USING CODE. I THINK I MIGHT BE A FEATURE "
          "SHIPPING BUG IN THE MATRIX. I LOVE BUILDING GREAT PRODUCTS THAT ACTUALLY "
          "SOLVES PEOPLE'S PROBLEM. MOST IMPORTANTLY, I WANT TO BE THE CHANGE THAT I "
          "WANT TO SEE IN THE WORLD.",
          softWrap: true,
          style: TextStyle(fontSize: 16, color: Colors.white),
          textAlign: TextAlign.start),
    );
  }

  Row buildTitle() {
    return Row(
      children: const [
        SizedBox(
          width: 25,
        ),
        Expanded(
          child: Text(
            "I'M A SOFTWARE ENGINEER",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Text buildName() {
    return const Text(
      "- HI!👋🏾\n I'M TUMININU OJO.",
      style: TextStyle(fontSize: 40, color: deepYellow),
    );
  }

  Expanded buildProfileImageCard() {
    return Expanded(
      flex: 1,
      child: SizedBox(
        height: double.infinity,
        child: Card(
          margin: const EdgeInsets.symmetric(vertical: 50),
          color: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          clipBehavior: Clip.antiAlias,
          child: Image.asset(
            "assets/tumi.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

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
                  hintStyle:
                      const TextStyle(color: greyTextColor, fontSize: 12),
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
                  hintStyle:
                      const TextStyle(color: greyTextColor, fontSize: 12),
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
            child: SizedBox(
              width: 200,
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

  Padding dontBeShyBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "FEEL FREE TO GET IN TOUCH WITH ME. I AM ALWAYS "
            "OPEN TO DISCUSSING NEW PROJECTS, CREATIVE "
            "IDEAS OR OPPORTUNITIES.",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
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

  Padding subTitleText(String title) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 25),
      ),
    );
  }

  Padding contactText() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        child: RichText(
            text: const TextSpan(
                style: TextStyle(fontSize: 25, color: Colors.white),
                children: [
              TextSpan(
                  text: "GET IN ", style: TextStyle(fontFamily: 'DotMatrix')),
              TextSpan(
                  text: "TOUCH",
                  style: TextStyle(color: deepYellow, fontFamily: 'DotMatrix')),
            ])),
      ),
    );
  }

  Center aboutMeText() {
    return Center(
      child: Stack(children: [
        const Positioned(
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
