import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
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
            height: MediaQuery.of(context).size.height / 4,
            fit: BoxFit.cover,
            image: const NetworkImage(
              'https://media-exp1.licdn.com/dms/image/C4E03AQGesRsRL5OiZQ/profile-displayphoto-shrink_200_200/0/1551999652598?e=1648684800&v=beta&t=ihfKX75FX0zUxI_ibxI0WqxAo7Ir4t3p-D63TtnTe1c',
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
