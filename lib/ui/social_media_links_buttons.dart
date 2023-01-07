import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tumi_ojo/ui/toast.dart';

Row buildSocialMediaLinksButtons(context, {required double iconSize}) {
  FToast fToast = FToast();
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Tooltip(
        message: "Github",
        child: InkWell(
          onTap: () {
            // js.context.callMethod('open', ['https://github.com/tumininucodes']);
          },
          child: SizedBox(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/github.png",
              height: iconSize,
              width: iconSize,
              fit: BoxFit.fill,
            ),
          )),
        ),
      ),
      const SizedBox(
        width: 30,
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
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/stackoverflow.png",
              height: iconSize,
              width: iconSize,
              fit: BoxFit.fill,
            ),
          )),
        ),
      ),
      const SizedBox(
        width: 30,
      ),
      Tooltip(
        message: "LinkedIn",
        child: InkWell(
          onTap: () {
            js.context.callMethod(
                'open', ['https://ng.linkedin.com/in/oluwatumininu-ojo']);
          },
          child: SizedBox(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/linkedin.png",
              height: iconSize,
              width: iconSize,
              fit: BoxFit.fill,
            ),
          )),
        ),
      ),
      const SizedBox(
        width: 30,
      ),
      Tooltip(
        message: "Twitter",
        child: InkWell(
          onTap: () {
            js.context.callMethod('open', ['https://twitter.com/tumi_ojo']);
          },
          child: SizedBox(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/twitter.png",
              height: iconSize,
              width: iconSize,
              fit: BoxFit.fill,
            ),
          )),
        ),
      ),
      const SizedBox(
        width: 30,
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
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/gmail.png",
              height: iconSize,
              width: iconSize,
              fit: BoxFit.fill,
            ),
          )),
        ),
      ),
    ],
  );
}
