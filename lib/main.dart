import 'package:flutter/material.dart';
import 'package:myprofileweb/components/body_component.dart';
import 'package:myprofileweb/generated/l10n.dart';
import 'drawings/background.dart';

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
          CustomPaint(painter: BackgroundPainter(), child: Container()),
          const BodyComponent()
        ]),
      ),
    );
  }
}
