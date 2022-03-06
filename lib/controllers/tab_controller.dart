import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofileweb/components/stats_component.dart';
import 'package:myprofileweb/generated/l10n.dart';
import 'package:myprofileweb/pages/contact_page.dart';
import 'package:myprofileweb/pages/softskills_page.dart';
import 'package:myprofileweb/pages/timeline_page.dart';

class TabControllerSkills extends GetxController {
  var tab = 0.obs;
  var maxTabs = 4;

  incrementTabs() {
    if (tab < maxTabs - 1) {
      tab++;
    }
  }

  decrementTabs() {
    if (tab > 0) {
      tab--;
    }
  }

  changeLangTitle({context}) {
    switch (tab.value) {
      case 0:
        return S.of(context).myTechnicalSkillsSection;
      case 1:
        return S.of(context).myExperiences;
      case 2:
        return S.of(context).softSkills;
      case 3:
        return S.of(context).contact;
    }
  }

  chooseTabs({context}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          color: Colors.white,
          iconSize: 60,
          icon: const Icon(Icons.arrow_left),
          onPressed: () => {
            decrementTabs(),
          },
        ),
        Text(
          changeLangTitle(context: context),
          style: const TextStyle(
              fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        IconButton(
          color: Colors.white,
          iconSize: 60,
          icon: const Icon(Icons.arrow_right),
          onPressed: () => {
            incrementTabs(),
          },
        ),
      ],
    );
  }

  containerTabChange({width}) {
    if (tab.value == 0) {
      return SizedBox(width: width, child: const StatsComponent());
    }
    if (tab.value == 1) {
      return SizedBox(width: width, child: TimeLinePage());
    }
    if (tab.value == 2) {
      return SizedBox(width: width, child: const SoftSkillsPage());
    }
    if (tab.value == 3) {
      return SizedBox(width: width, child: const ContactPage());
    }
  }
}
