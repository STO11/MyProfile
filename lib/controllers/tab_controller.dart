import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofileweb/components/stats_component.dart';
import 'package:myprofileweb/generated/l10n.dart';
import 'package:myprofileweb/pages/timeline_page.dart';

class TabControllerSkills extends GetxController {
  var tab = 0.obs;
  var maxTabs = 3;

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
    }
  }

  chooseTable({context}) {
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
          style: const TextStyle(fontSize: 40, color: Colors.white),
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

    return Text('MUDOU' + tab.value.toString());
  }
}
