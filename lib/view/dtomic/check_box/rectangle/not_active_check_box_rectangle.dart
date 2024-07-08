import 'package:flutter/material.dart';

class NotActiveCheckBoxRectangle extends StatelessWidget {
  const NotActiveCheckBoxRectangle({
    super.key,
    required this.width,
    required this.borderWidth,
    required this.borderColor,
    required this.color,
    required this.radius,
  });

  final double? width;
  final double borderWidth;
  final Color borderColor;
  final Color? color;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
          border: Border.all(
            width: borderWidth,
            color: borderColor,
          ),
          color: color,
          borderRadius: BorderRadius.circular(radius)),
    );
  }
}
