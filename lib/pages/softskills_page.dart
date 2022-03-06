import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofileweb/generated/l10n.dart';

class SoftSkillsPage extends StatelessWidget {
  const SoftSkillsPage({Key? key}) : super(key: key);

  Widget _fetchItems({name}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        name,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
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
            _fetchItems(name: S.of(context).softSCommunication),
            _fetchItems(name: S.of(context).softSTolerance),
            _fetchItems(name: S.of(context).softSResolution),
            _fetchItems(name: S.of(context).softSMind),
            _fetchItems(name: S.of(context).softSLearning),
          ],
        ),
      ),
    );
  }
}
