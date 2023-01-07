import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

Row buildSocialMediaLinksButtons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Tooltip(
        message: "Github",
        child: InkWell(
          onTap: () {
            js.context.callMethod('open', ['https://github.com/tumininucodes']);
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
