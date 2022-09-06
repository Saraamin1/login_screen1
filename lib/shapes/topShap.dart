 import 'package:flutter/material.dart';

 class TopShap extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    var path = Path();
   paint.color = Colors.redAccent;
    //var strokeCap = StrokeCap.round;
    path.moveTo(0, size.height *1.5);
     path.quadraticBezierTo(size.width * 0.1, size.height * 0.2,
      size.width * 0.5, size.height * 0.3);
     path.quadraticBezierTo(size.width * 0.9, size.height * 0.5,
         size.width * 0.99, size.height * 0);
     path.lineTo(0, 0);
    
     path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

