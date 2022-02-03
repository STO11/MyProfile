import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff1B1E23).withOpacity(1.0);
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width, size.height * 0.2000000);
    path_1.lineTo(0, size.height * 0.5750000);
    path_1.lineTo(0, size.height * 0.4375000);
    path_1.lineTo(size.width, size.height * 0.06250000);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xff17191d).withOpacity(0.21);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width, size.height * 0.3250000);
    path_2.lineTo(0, size.height * 0.7000000);
    path_2.lineTo(0, size.height * 0.5625000);
    path_2.lineTo(size.width, size.height * 0.1875000);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xff131518).withOpacity(0.21);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width, size.height * 0.4500000);
    path_3.lineTo(0, size.height * 0.8250000);
    path_3.lineTo(0, size.height * 0.6875000);
    path_3.lineTo(size.width, size.height * 0.3125000);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xff0e1012).withOpacity(0.21);
    canvas.drawPath(path_3, paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(size.width, size.height * 0.5750000);
    path_4.lineTo(0, size.height * 0.9500000);
    path_4.lineTo(0, size.height * 0.8125000);
    path_4.lineTo(size.width, size.height * 0.4375000);
    path_4.close();

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = Color(0xff07080a).withOpacity(0.21);
    canvas.drawPath(path_4, paint_4_fill);

    Path path_5 = Path();
    path_5.moveTo(size.width, size.height);
    path_5.lineTo(0, size.height);
    path_5.lineTo(0, size.height * 0.9375000);
    path_5.lineTo(size.width, size.height * 0.5625000);
    path_5.close();

    Paint paint_5_fill = Paint()..style = PaintingStyle.fill;
    paint_5_fill.color = Color(0xff000000).withOpacity(0.21);
    canvas.drawPath(path_5, paint_5_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
