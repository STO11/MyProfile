import 'package:flutter/material.dart';
import 'package:myprofileweb/components/avatar_component.dart';
import 'package:myprofileweb/components/stats_component.dart';
import 'package:myprofileweb/generated/l10n.dart';
import 'package:myprofileweb/languages/languages.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const AvatarComponent(),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Text(
              S.of(context).aboutMe,
              style: const TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.justify,
            ),
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
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: const StatsComponent(),
          ),
        ],
      ),
    );
  }
}
