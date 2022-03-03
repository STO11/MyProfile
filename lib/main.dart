import 'package:flutter/material.dart';
import 'package:myprofileweb/components/header_component.dart';
import 'package:myprofileweb/generated/l10n.dart';
import 'package:myprofileweb/paints/background.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      title: 'Suelton',
      home: Scaffold(
        body: Stack(children: [
          CustomPaint(painter: MyPainter(), child: Container()),
          const Header()
        ]),
      ),
    );
  }
}
