import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprofileweb/constants/experience.dart';
import 'package:myprofileweb/controllers/experience_controller.dart';
import 'package:myprofileweb/utils/resolution.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLinePage extends StatelessWidget {
  TimeLinePage({Key? key}) : super(key: key);

  final ExperienceController experienceController =
      Get.put(ExperienceController());

  Widget _itemTimeLine({item, constraintFactor, context}) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.3,
      indicatorStyle: IndicatorStyle(
          padding: const EdgeInsets.all(10),
          color: Colors.yellow,
          iconStyle: IconStyle(
            iconData: Icons.downloading_outlined,
            color: Colors.black,
            fontSize: 20,
          )),
      endChild: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black12,
        ),
        constraints: BoxConstraints(
          minHeight: Get.width / constraintFactor,
        ),
        child: Column(
          children: [
            const Divider(
              color: Colors.white,
            ),
            SizedBox(height: Get.height / 30),
            Text(
              item['role'],
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              experienceController
                  .changeLangRange(id: item['id'], context: context)
                  .toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                experienceController
                    .changeLangDescription(id: item['id'], context: context)
                    .toString(),
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            //const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                item['technologies'].toString(),
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: Get.height / 30),
          ],
        ),
      ),
      startChild: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black26,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              item['name'].toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              item['last_name'].toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: Column(
          children: companies.reversed
              .map((item) => _itemTimeLine(
                  item: item, constraintFactor: 2, context: context))
              .toList()),
      tablet: Column(
          children: companies.reversed
              .map((item) => _itemTimeLine(
                  item: item, constraintFactor: 4, context: context))
              .toList()),
      web: Column(
          children: companies.reversed
              .map((item) => _itemTimeLine(
                  item: item, constraintFactor: 50, context: context))
              .toList()),
    );
  }
}
