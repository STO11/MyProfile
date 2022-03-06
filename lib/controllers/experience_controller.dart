import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofileweb/generated/l10n.dart';

class ExperienceController extends GetxController {
  changeLangDescription({context, id}) {
    switch (id) {
      case 5:
        return S.of(context).descriptionDasa;
      case 4:
        return S.of(context).descriptionDextra;
      case 3:
        return S.of(context).descriptionJoin;
      case 2:
        return S.of(context).descriptionBredi;
      case 1:
        return S.of(context).descriptionInfoPublic;
    }
  }

  changeLangRange({context, id}) {
    switch (id) {
      case 5:
        return S.of(context).rangeDasa;
      case 4:
        return S.of(context).rangeDextra;
      case 3:
        return S.of(context).rangeJoin;
      case 2:
        return S.of(context).rangeBredi;
      case 1:
        return S.of(context).rangeInfoPublic;
    }
  }
}
