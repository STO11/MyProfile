import 'package:flutter/material.dart';
import 'package:myprofileweb/constants/skills.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class StatsComponent extends StatelessWidget {
  const StatsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: skills
            .map((item) => Column(children: [
                  Text(item['name'].toString(),
                      style:
                          const TextStyle(fontSize: 30, color: Colors.white)),
                  StepProgressIndicator(
                    totalSteps: totalSteps,
                    currentStep: item['step'] as int,
                    selectedColor: Colors.red,
                    unselectedColor: Colors.yellow,
                  ),
                  const SizedBox(
                    height: 40,
                  )
                ]))
            .toList());
  }
}
