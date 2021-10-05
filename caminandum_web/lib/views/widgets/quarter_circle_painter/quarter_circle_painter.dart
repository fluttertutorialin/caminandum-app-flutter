import 'dart:math';
import 'package:flutter/material.dart';

enum CircleAlignment {
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
}

class QuarterCirclePainter extends CustomPainter {
  final CircleAlignment circleAlignment;
  final Color color;

  const QuarterCirclePainter(
      {required this.circleAlignment, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final radius = min(size.height, size.width / 2.8);
    canvas.drawCircle(
        Offset(size.width - 65, 75), radius, Paint()..color = color);
  }

  @override
  bool shouldRepaint(QuarterCirclePainter oldDelegate) {
    return color == oldDelegate.color &&
        circleAlignment == oldDelegate.circleAlignment;
  }
}
