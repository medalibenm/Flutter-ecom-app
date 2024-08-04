import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TCustomClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    // first curve
    path.quadraticBezierTo(0, size.height - 20, 30, size.height - 20);

    // straight line
    path.quadraticBezierTo(
        30, size.height - 20, size.width - 30, size.height - 20);

    // last curve
    path.quadraticBezierTo(
        size.width, size.height - 20, size.width, size.height);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
