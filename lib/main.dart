import 'dart:js' as js;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tumi_ojo/constants.dart';
import 'more_about_me_screen.dart';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
    theme: ThemeData(fontFamily: "OpenSans"),
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
      body: buildContainer(),
    );
  }

  Container buildContainer() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: buildBackground(),
      child: Row(
        children: [
          const SizedBox(
            width: 50,
          ),
          buildProfileImageCard(),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildName(),
                    buildTitle(),
                    const SizedBox(
                      height: 20,
                    ),
                    buildDescription(),
                    const SizedBox(
                      height: 20,
                    ),
                    buildMoreInfoButton()
                  ],
                ),
              )),
          buildSocialMediaLinksButtons(),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }

  Column buildSocialMediaLinksButtons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Tooltip(
          message: "Github",
          child: InkWell(
            onTap: () {
              js.context
                  .callMethod('open', ['https://github.com/tumininucodes']);
            },
            child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: greyColor),
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
            child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: greyColor),
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
            child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: greyColor),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/linkedin.png"),
                )),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Tooltip(
          message: "Twitter",
          child: InkWell(
            onTap: () {
              js.context.callMethod('open', ['https://twitter.com/tumiOnIt']);
            },
            child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: greyColor),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/twitter.png"),
                )),
          ),
        ),
        const SizedBox(
          height: 20,
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
            child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: greyColor),
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
                  fontWeight: FontWeight.bold),
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

  Text buildDescription() {
    return const Text(
        "I'm a Tunisian based web designer & front‑end "
        "developer focused on crafting clean & user‑friendly "
        "experiences, I am passionate about building excellent "
        "software that improves the lives of those around me.",
        softWrap: true,
        style: TextStyle(fontSize: 15, color: Colors.white),
        textAlign: TextAlign.start);
  }

  Row buildTitle() {
    return Row(
      children: const [
        SizedBox(
          width: 25,
        ),
        Expanded(
          child: Text(
            "MOBILE APP DEVELOPER",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 48, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Text buildName() {
    return const Text(
      "- I'M OLUWATUMININU OJO.",
      style: TextStyle(
          fontSize: 50, color: deepYellow, fontWeight: FontWeight.bold),
    );
  }

  Expanded buildProfileImageCard() {
    return Expanded(
      flex: 1,
      child: Container(
        height: double.infinity,
        child: Card(
          margin: EdgeInsets.symmetric(vertical: 50),
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

  BoxDecoration buildBackground() {
    return const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage("assets/background2.png")));
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
}
