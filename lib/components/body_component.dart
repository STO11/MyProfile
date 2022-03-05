import 'package:flutter/material.dart';
import 'package:myprofileweb/components/avatar_component.dart';
import 'package:myprofileweb/components/header_component.dart';
import 'package:myprofileweb/components/stats_component.dart';
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

    _mySkills({width}) {
      return SizedBox(width: width, child: const StatsComponent());
    }

    return Scrollbar(
      child: Stack(alignment: Alignment.topCenter, children: [
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
              Text(
                S.of(context).myTechnicalSkillsSection,
                style: const TextStyle(fontSize: 40, color: Colors.white),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 12,
              ),
              ResponsiveWidget(
                mobile:
                    _mySkills(width: MediaQuery.of(context).size.width / 1.2),
                tablet:
                    _mySkills(width: MediaQuery.of(context).size.width / 1.4),
                web: _mySkills(width: MediaQuery.of(context).size.width / 1.8),
              ),
            ],
          ),
        ),
        HeaderComponent(onPressedLangChange: _setLocale),
      ]),
    );
  }
}
