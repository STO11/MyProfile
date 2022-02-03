import 'package:myprofileweb/languages/en.dart';
import 'package:myprofileweb/languages/pt_br.dart';

class Languages with PtBrLanguage, EnLanguage {
  get aboutMe {
    return 1 == 2 ? aboutMePt : aboutMeEn;
  }
}
