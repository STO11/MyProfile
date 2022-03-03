import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class StatsComponent extends StatelessWidget {
  const StatsComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('PHP / Laravel',
            style: TextStyle(fontSize: 30, color: Colors.white)),
        StepProgressIndicator(
          totalSteps: 10,
          currentStep: 9,
          selectedColor: Colors.red,
          unselectedColor: Colors.yellow,
        ),
        SizedBox(
          height: 40,
        ),
        Text('React Native',
            style: TextStyle(fontSize: 30, color: Colors.white)),
        StepProgressIndicator(
          totalSteps: 10,
          currentStep: 8,
          selectedColor: Colors.red,
          unselectedColor: Colors.yellow,
        ),
        SizedBox(
          height: 40,
        ),
        Text('NodeJS', style: TextStyle(fontSize: 30, color: Colors.white)),
        StepProgressIndicator(
          totalSteps: 10,
          currentStep: 6,
          selectedColor: Colors.red,
          unselectedColor: Colors.yellow,
        ),
        SizedBox(
          height: 40,
        ),
        Text('Flutter', style: TextStyle(fontSize: 30, color: Colors.white)),
        StepProgressIndicator(
          totalSteps: 10,
          currentStep: 5,
          selectedColor: Colors.red,
          unselectedColor: Colors.yellow,
        ),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
