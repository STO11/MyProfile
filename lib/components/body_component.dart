import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofileweb/components/avatar_component.dart';
import 'package:myprofileweb/components/header_component.dart';
import 'package:myprofileweb/components/stats_component.dart';
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

    _containerChange({width}) {
      if (tabController.tab == 0) {
        return SizedBox(width: width, child: const StatsComponent());
      }
      return Text('MUDOU');
    }

    _chooseTable({context}) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            color: Colors.white,
            iconSize: 60,
            icon: const Icon(Icons.arrow_left),
            onPressed: () => {
              tabController.decrementTabs(),
            },
          ),
          Text(
            tabController.changeLangTitle(context: context),
            style: const TextStyle(fontSize: 40, color: Colors.white),
          ),
          IconButton(
            color: Colors.white,
            iconSize: 60,
            icon: const Icon(Icons.arrow_right),
            onPressed: () => {
              tabController.incrementTabs(),
            },
          ),
        ],
      );
    }

    return Obx(
      () => Stack(alignment: Alignment.topCenter, children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width),
              const AvatarComponent(),
              ResponsiveWidget(
                mobile: _textAboutMe(
                    width: MediaQuery.of(context).size.width / 1.2),
                tablet: _textAboutMe(
                    width: MediaQuery.of(context).size.width / 1.4),
                web: _textAboutMe(
                    width: MediaQuery.of(context).size.width / 1.8),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
              ),
              // ignore: prefer_const_constructors
              _chooseTable(context: context),
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
              ),
              ResponsiveWidget(
                mobile: _containerChange(
                    width: MediaQuery.of(context).size.width / 1.2),
                tablet: _containerChange(
                    width: MediaQuery.of(context).size.width / 1.4),
                web: _containerChange(
                    width: MediaQuery.of(context).size.width / 1.8),
              ),
              Text(tabController.tab.toString())
            ],
          ),
        ),
        HeaderComponent(onPressedLangChange: _setLocale),
      ]),
    );
  }
}
