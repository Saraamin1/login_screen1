import 'package:flutter/material.dart';


class ButtomShap extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    var path = Path();
    paint.color = Colors.blue;
    path.moveTo(size.width * 0.1, size.height *1);
     path.quadraticBezierTo(size.width * 0.1, size.height * 0.4,
      size.width * 0.6, size.height * 0.55);
     path.quadraticBezierTo(size.width * 0.9, size.height * 0.6,
         size.width * 0.999, size.height * 0);
    // path.lineTo(size.width * 0.1, size.height *1);
    
     path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
