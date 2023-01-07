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

SizedBox buildMobileUI(context) {
  return SizedBox(
    height: double.infinity,
    width: double.infinity,
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
                buildNameText(fontSize: 40),
                const SizedBox(
                  height: 20,
                ),
                buildTitleText(fontSize: 30),
                const SizedBox(
                  height: 20,
                ),
                buildDescription(fontSize: 20),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: buildMoreInfoButton(context, fontSize: 18),
                ),
                height(20),
                subTitleText("I USE...................................",
                    fontSize: 25),
                height(20),
                buildSkillsSection(iconSize: 50, fontSize: 25),
                height(30),
                Align(
                  alignment: Alignment.centerRight,
                  child: subTitleText("..............TO BUILD SOFTWARE",
                      fontSize: 25),
                ),
                height(20),
                contactText(fontSize: 25),
                dontBeShyBox(fontSize: 20),
                height(20),
                buildSocialMediaLinksButtons(context, iconSize: 25),
                height(20),
                formBox(fontSize: 18, btnFontSize: 18),
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
