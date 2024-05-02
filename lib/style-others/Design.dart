import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 260);
    path.quadraticBezierTo(
        size.width / 3, 360 /*180*/, size.width / 2, 375);
    path.quadraticBezierTo(
        3/ 3 * size.width, 390, size.width, 430);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}