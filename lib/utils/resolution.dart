import 'package:flutter/material.dart';

mixin ResolutionConstants {
  static const mobile = 768;
  static const tablet = 1000;
  static const web = 1100;
}

class ResponsiveWidget extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget web;

  const ResponsiveWidget(
      {Key? key, required this.mobile, required this.tablet, required this.web})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= ResolutionConstants.mobile) {
          print('mobile');
          return mobile;
        }

        if (constraints.maxWidth > ResolutionConstants.mobile &&
            constraints.maxWidth < ResolutionConstants.web) {
          print('tablet');
          return tablet;
        } else {
          print('web');
          return web;
        }
      },
    );
  }
}
