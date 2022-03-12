import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:get/get.dart';
import 'package:octo_image/octo_image.dart';
import 'package:animate_do/animate_do.dart';

class AvatarComponent extends StatelessWidget {
  const AvatarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return JelloIn(
      child: AvatarGlow(
        glowColor: Colors.grey,
        endRadius: 200.0,
        duration: const Duration(milliseconds: 2000),
        repeat: true,
        showTwoGlows: true,
        repeatPauseDuration: const Duration(milliseconds: 100),
        child: Material(
          // Replace this child with your own
          elevation: 8.0,
          shape: const CircleBorder(),
          child: OctoImage.fromSet(
            height: Get.height / 4,
            fit: BoxFit.cover,
            image: const NetworkImage(
              'https://media-exp1.licdn.com/dms/image/C4D03AQHgc0GuLuGkSg/profile-displayphoto-shrink_800_800/0/1646876457748?e=1652313600&v=beta&t=c-zdAnQK5DaiWjznBruNzTRKLaFwIXX0bxmd8V9gRjM',
            ),
            octoSet: OctoSet.circleAvatar(
              backgroundColor: Colors.red,
              text: const Text("Suelton"),
            ),
          ),
        ),
      ),
    );
  }
}
