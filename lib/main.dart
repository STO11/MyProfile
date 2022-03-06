// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofileweb/components/body_component.dart';
import 'package:myprofileweb/constants/lang.dart';
import 'package:myprofileweb/controllers/lang_controller.dart';
import 'package:myprofileweb/generated/l10n.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'constants/strings.dart';
import 'drawings/background.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  S.load(Locale(defaultLang));
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatefulWidget {
  const MyProfileApp({Key? key}) : super(key: key);

  @override
  State<MyProfileApp> createState() => _MyProfileAppState();
}

class _MyProfileAppState extends State<MyProfileApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: const [
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      builder: (context, widget) => ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, widget!),
          // maxWidth: 1200,
          // minWidth: 450,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background:
              CustomPaint(painter: BackgroundPainter(), child: Container())),
      title: mainTitle,
      home:
          Scaffold(backgroundColor: Colors.transparent, body: BodyComponent()),
    );
  }
}
