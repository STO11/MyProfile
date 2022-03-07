import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofileweb/components/avatar_component.dart';
import 'package:myprofileweb/components/header_component.dart';
import 'package:myprofileweb/components/stats_component.dart';
import 'package:myprofileweb/constants/lang.dart';
import 'package:myprofileweb/controllers/tab_controller.dart';
import 'package:myprofileweb/generated/l10n.dart';
import 'package:myprofileweb/utils/resolution.dart';

class BodyComponent extends StatefulWidget {
  const BodyComponent({Key? key}) : super(key: key);

  @override
  _BodyComponentState createState() => _BodyComponentState();
}

class _BodyComponentState extends State<BodyComponent> {
  _setLocale(String language) {
    setState(() {
      S.load(Locale(language));
    });
  }

  final TabControllerSkills tabController = Get.put(TabControllerSkills());

  @override
  Widget build(BuildContext context) {
    _textAboutMe({width}) {
      return SizedBox(
        width: width,
        child: Text(
          S.of(context).aboutMe,
          style: const TextStyle(fontSize: 20, color: Colors.white),
          textAlign: TextAlign.justify,
        ),
      );
    }

    return Obx(
      () => Stack(alignment: Alignment.topCenter, children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(width: Get.width),
              const AvatarComponent(),
              ResponsiveWidget(
                mobile: _textAboutMe(width: Get.width / 1.1),
                tablet: _textAboutMe(width: Get.width / 1.3),
                web: _textAboutMe(width: Get.width / 1.8),
              ),
              SizedBox(
                height: Get.height / 12,
              ),
              tabController.chooseTabs(context: context),
              SizedBox(
                height: Get.height / 12,
              ),
              ResponsiveWidget(
                mobile:
                    tabController.containerTabChange(width: Get.width / 0.8),
                tablet:
                    tabController.containerTabChange(width: Get.width / 1.3),
                web: tabController.containerTabChange(width: Get.width / 1.8),
              ),
            ],
          ),
        ),
        HeaderComponent(onPressedLangChange: _setLocale),
      ]),
    );
  }
}
