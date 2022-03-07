import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofileweb/constants/strings.dart';
import 'package:myprofileweb/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  Widget _fetchItems({linkUrl, name, email = false, link = false}) {
    return MouseRegion(
      cursor:
          email || link ? SystemMouseCursors.click : SystemMouseCursors.text,
      child: GestureDetector(
        onTap: () => {
          if (email) {_launchMail(linkUrl)},
          if (link) {_launchLink(linkUrl)}
        },
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: email || link ? Colors.blue : Colors.white,
              decoration: email || link
                  ? TextDecoration.underline
                  : TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }

  void _launchMail(String email) async {
    var mailUrl = 'mailto:' + email;
    try {
      await launch(mailUrl);
    } catch (e) {}
  }

  void _launchLink(String link) async {
    try {
      await launch(link);
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      //height: Get.height,
      decoration: const BoxDecoration(
        color: Colors.black26,
      ),
      child: Padding(
        padding: EdgeInsets.all(Get.width * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _fetchItems(
                name: myName + ', ' + myAge.toString() + ', ' + myLocation),
            _fetchItems(name: 'E-mail', linkUrl: myEmail, email: true),
            _fetchItems(name: 'Linkedin', linkUrl: myLinkedin, link: true),
            _fetchItems(name: 'GitHub', linkUrl: myGithub, link: true),
          ],
        ),
      ),
    );
  }
}
