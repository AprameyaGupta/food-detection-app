import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  final BuildContext context;

  CurvePainter(this.context);
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Theme.of(context).primaryColor;

    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.500);
    path.quadraticBezierTo(size.width * 0.20, size.height * 0.370,
        size.width * 0.5, size.height * 0.385);
    path.quadraticBezierTo(size.width * 0.90, size.height * 0.400,
        size.width * 1.0, size.height * 0.280);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}