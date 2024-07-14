import 'package:flutter/material.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';

import 'active_check_box_container_rectangle.dart';
import 'not_active_check_box_rectangle.dart';

class CheckBoxAnAverageRectangle extends StatelessWidget {
  const CheckBoxAnAverageRectangle({
    super.key,
    this.width,
    this.color,
    this.radius = 5,
    this.borderColor = Colors.transparent,
    this.onTap,
    this.isCheck = true,
    this.borderWidth = 0.25,
    this.colorActive = AppColos.whiteViolet,
  });
  final double? width;
  final Color? color;
  final Color borderColor;
  final double radius;
  final void Function()? onTap;
  final bool isCheck;
  final double borderWidth;
  final Color? colorActive;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(radius),
      onTap: onTap,
      child: isCheck
          ? NotActiveCheckBoxRectangle(
              width: width,
              borderWidth: borderWidth,
              borderColor: borderColor,
              color: color,
              radius: radius,
            )
          : ActiveCheckBoxContainerRectangle(
              width: width,
              colorActive: colorActive,
              radius: radius,
            ),
    );
  }
}
