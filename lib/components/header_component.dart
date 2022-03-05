import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
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
              child:
                  Image.asset('./assets/images/eua.png', width: 40, height: 40),
            ),
          ),
          SizedBox(width: Get.width / 60),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () => onPressedLangChange(ptLang),
              child:
                  Image.asset('./assets/images/br.png', width: 40, height: 40),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      height: MediaQuery.of(context).size.height / 20,
      child: ResponsiveWidget(
        mobile: _flagsLangs(width: Get.width / 10, context: context),
        tablet: _flagsLangs(width: Get.width / 8, context: context),
        web: _flagsLangs(width: Get.width / 4.7, context: context),
      ),
    );
  }
}
