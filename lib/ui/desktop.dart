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
import 'form_box.dart';
import 'more_info_button.dart';
import 'name.dart';

Container buildDesktopUI() {
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
                buildNameText(60),
                const SizedBox(
                  height: 20,
                ),
                buildTitleText(fontSize: null),
                const SizedBox(
                  height: 20,
                ),
                buildDescription(),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: buildMoreInfoButton(context),
                ),
                height(20),
                subTitleText("MY SKILLS"),
                height(20),
                buildSkillsSection(),
                height(20),
                contactText(),
                dontBeShyBox(),
                height(20),
                buildSocialMediaLinksButtons(context),
                height(20),
                formBox(),
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
