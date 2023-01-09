import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tumi_ojo/ui/desktop.dart';
import 'package:tumi_ojo/ui/mobile.dart';
import 'package:tumi_ojo/utils/responsive.dart';

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
          children: const [Text("<TUMIE.DEV/>"), Spacer()],
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: buildMainScreen(context),
    );
  }

  Widget buildMainScreen(context) {
    if (screenType(context) == "mobile") {
      return buildMobileUI(context);
    } else {
      return buildDesktopUI();
    }
  }
}
