import 'package:flutter/material.dart';
import 'package:myprofileweb/constants/lang.dart';
import 'package:myprofileweb/generated/l10n.dart';
import 'package:myprofileweb/utils/resolution.dart';

class HeaderComponent extends StatelessWidget {
  final Function(String language) onPressedLangChange;

  const HeaderComponent({Key? key, required this.onPressedLangChange})
      : super(key: key);

  _flagsLangs({context, width}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                  onTap: () => onPressedLangChange(enLang),
                  child: Image.asset('images/eua.png', width: 40, height: 40))),
          SizedBox(width: MediaQuery.of(context).size.width / 60),
          MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                  onTap: () => onPressedLangChange(ptLang),
                  child: Image.asset('images/br.png', width: 40, height: 40))),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      height: MediaQuery.of(context).size.height / 30,
      child: ResponsiveWidget(
        mobile: _flagsLangs(
            width: MediaQuery.of(context).size.width / 10, context: context),
        tablet: _flagsLangs(
            width: MediaQuery.of(context).size.width / 8, context: context),
        web: _flagsLangs(
            width: MediaQuery.of(context).size.width / 4.7, context: context),
      ),
    );
  }
}
