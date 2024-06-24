import 'package:flutter/material.dart';

import 'dart:math'; // Add this line



class ThreeColorCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5; // Decreased stroke width to make the circle thinner

    // Green arc
    paint.color = Colors.deepPurpleAccent;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.width / 2, size.height / 2),
        width: size.width,
        height: size.height,
      ),
      0,
      pi * 2 / 3, // Changed the sweep angle to 2/3 of a circle
      false,
      paint,
    );

    // Yellow arc
    paint.color = Colors.yellow;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.width / 2, size.height / 2),
        width: size.width,
        height: size.height,
      ),
      pi * 2 / 3, // Changed the start angle to 2/3 of a circle
      pi * 2 / 3, // Changed the sweep angle to 2/3 of a circle
      false,
      paint,
    );

    // Red arc
    paint.color = Colors.greenAccent;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.width / 2, size.height / 2),
        width: size.width,
        height: size.height,
      ),
      pi * 4 / 3, // Changed the start angle to 4/3 of a circle
      pi * 2 / 3, // Changed the sweep angle to 2/3 of a circle
      false,
      paint,
    );

    // Plus sign
    paint.color = Colors.black;
    paint.strokeWidth = 2;
    canvas.drawLine(
      Offset(size.width / 2 - 10, size.height / 2),
      Offset(size.width / 2 + 10, size.height / 2),
      paint,
    );
    canvas.drawLine(
      Offset(size.width / 2, size.height / 2 - 10),
      Offset(size.width / 2, size.height / 2 + 10),
      paint,
    );
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}