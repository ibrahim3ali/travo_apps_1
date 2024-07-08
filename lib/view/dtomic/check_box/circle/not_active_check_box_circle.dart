import 'package:flutter/material.dart';

class NotActiveCheckBoxCircle extends StatelessWidget {
  const NotActiveCheckBoxCircle({
    super.key,
    required this.width,
    required this.borderWidth,
    required this.borderColor,
    required this.color,
      this.shape=BoxShape.circle,
  });

  final double? width;
  final double borderWidth;
  final Color borderColor;
  final Color? color;
  
  final BoxShape shape;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
          shape:shape,
          border: Border.all(
            width: borderWidth,
            color: borderColor,
          ),
          color: color,
          ),
    );
  }
}
