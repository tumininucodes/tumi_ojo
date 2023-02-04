import 'dart:js';

import 'package:flutter/material.dart';
import 'package:tumi_ojo/extensions/height.dart';
import 'package:tumi_ojo/ui/skills_section.dart';
import 'package:tumi_ojo/ui/social_media_links_buttons.dart';
import 'package:tumi_ojo/ui/subtitle_text.dart';
import 'package:tumi_ojo/ui/title.dart';

import 'contact_text.dart';
import 'description.dart';
import 'dont_be_shy.dart';
import 'more_info_button.dart';
import 'name.dart';

SingleChildScrollView buildDesktopUI() {
  return SingleChildScrollView(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildNameText(fontSize: 80),
              const SizedBox(
                height: 50,
              ),
              buildTitleText(fontSize: 60),
              const SizedBox(
                height: 20,
              ),
              buildDescription(fontSize: 40),
              height(80),
              Center(
                child: buildMoreInfoButton(context, fontSize: 30),
              ),
              height(20),
              subTitleText("I use....", fontSize: 60),
              height(20),
              buildSkillsSection(iconSize: 140, fontSize: 30),
              height(80),
              Align(
                alignment: Alignment.centerRight,
                child: subTitleText("....to build software", fontSize: 60),
              ),
              height(70),
              contactText(fontSize: 70),
              dontBeShyBox(fontSize: 40),
              height(40),
              buildSocialMediaLinksButtons(context, iconSize: 80),
              height(40),
              // formBox(fontSize: 20, btnFontSize: 30),
            ],
          ),
        ),
      ],
    ),
  );
}
