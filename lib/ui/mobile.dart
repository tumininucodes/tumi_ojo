import 'package:flutter/material.dart';

Container buildMobileUI() {
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
                buildSkillsSection(),
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
