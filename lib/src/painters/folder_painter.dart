import 'package:flutter/material.dart';

class FolderPainter extends CustomPainter {
  final Color color;
  final StrokeCap strokeCap;
  final PaintingStyle paintingStyle;
  final double strokeWidth;

  FolderPainter({
    this.color,
    this.strokeWidth,
    this.strokeCap,
    this.paintingStyle,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = strokeWidth
      ..color = color
      ..style = paintingStyle
      ..strokeCap = strokeCap;

    Paint paintShadow = Paint()
      ..strokeWidth = strokeWidth
      ..color = Colors.grey.withOpacity(0.4)
      ..style = paintingStyle
      ..strokeCap = strokeCap;

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 13, size.width, size.height * 0.72),
        Radius.circular(10),
      ),
      paintShadow,
    );

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width * 0.45, size.height),
        Radius.circular(10),
      ),
      paint,
    );

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, size.height * 0.28, size.width, size.height * 0.72),
        Radius.circular(10),
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
