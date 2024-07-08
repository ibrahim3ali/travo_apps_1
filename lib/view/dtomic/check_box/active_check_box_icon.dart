import 'package:flutter/material.dart';

class ActiveCheckBoxIcon extends StatelessWidget {
  const ActiveCheckBoxIcon({
    super.key,
    required this.width,
    required this.color,
    required this.radius,
    required this.sizeIcon,
    required this.colorIcon, this.icon,
  });

  final double? width;
  final Color? color;
  final double radius;
  final double sizeIcon;
  final Color colorIcon;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Center(
        child: Icon(
         icon,
          size: sizeIcon,
          color: colorIcon,
        ),
      ),
    );
  }
}
