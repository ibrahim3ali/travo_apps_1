import 'package:flutter/material.dart';

class DotlndicatorWidget extends StatelessWidget {
  const DotlndicatorWidget({
    super.key,
    required this.isActive,
    this.colorActive = const Color(0xffFE9C5E),
    this.colorNotActive = const Color(0xffD8D8D8),
    this.radius = 50,
    this.width = 20,
    this.height = 5,
  });
  final bool isActive;
  final double radius;

  final Color colorActive, colorNotActive;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: isActive ? width : height,
      height: isActive ? height : height,
      decoration: BoxDecoration(
        borderRadius: isActive ? BorderRadius.circular(radius) : null,
        shape: isActive ? BoxShape.rectangle : BoxShape.circle,
        color: isActive ? colorActive : colorNotActive,
      ),
    );
  }
}
