import 'package:myprofileweb/languages/en.dart';
import 'package:myprofileweb/languages/pt_br.dart';

class Languages with PtBrLanguage, EnLanguage {
  final String lang = 'pt';

  get aboutMe {
    return 1 == 2 ? aboutMePt : aboutMeEn;
  }

  get mySkillsSection {
    return 1 == 2 ? myTechnicalSkillsSectionPt : myTechnicalSkillsSectionEn;
  }
}
