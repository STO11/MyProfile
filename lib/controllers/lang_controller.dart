import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofileweb/generated/l10n.dart';

class LangController extends GetxController {
  var language = 'en'.obs;

  setLocale({language}) {
    this.language.value = language;
    S.load(Locale(language));
  }
}
