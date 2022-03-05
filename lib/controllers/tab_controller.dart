import 'package:get/get.dart';
import 'package:myprofileweb/generated/l10n.dart';

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
}
