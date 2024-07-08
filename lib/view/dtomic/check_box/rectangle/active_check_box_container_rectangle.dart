import 'package:flutter/material.dart';

class ActiveCheckBoxContainerRectangle extends StatelessWidget {
  const ActiveCheckBoxContainerRectangle({
    super.key,
    required this.width,
    required this.colorActive,
    required this.radius,
  });

  final double? width;
  final Color? colorActive;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        
        color: colorActive,
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
