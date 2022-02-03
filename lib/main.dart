import 'package:flutter/material.dart';
import 'package:myprofileweb/components/avatar_component.dart';
import 'package:myprofileweb/paints/background.dart';

import 'languages/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Profile',
      home: Scaffold(
        body: Stack(children: [
          CustomPaint(painter: MyPainter(), child: Container()),
          const Header()
        ]),
      ),
    );
  }
}

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
              Languages().aboutMe,
              style: const TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
