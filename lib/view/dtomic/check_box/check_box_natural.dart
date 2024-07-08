import 'package:flutter/material.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';

import 'active_check_box_icon.dart';
import 'rectangle/not_active_check_box_rectangle.dart';

class CheckBoxNatural extends StatelessWidget {
  const CheckBoxNatural({
    super.key,
    this.width,
    this.color,
    this.radius = 9,
    this.borderColor = Colors.transparent,
    this.onTap,
    this.isCheck = true,
    this.borderWidth = 0.25,
    this.sizeIcon = 16,
    this.colorIcon = AppColos.linear,
    this.icon = Icons.check,
  });
  final double? width;
  final Color? color;
  final Color borderColor;
  final double radius;
  final void Function()? onTap;
  final bool isCheck;
  final double borderWidth;
  final double sizeIcon;
  final Color colorIcon;
  final IconData? icon;
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
          : ActiveCheckBoxIcon(
              icon: icon,
              width: width,
              color: color,
              radius: radius,
              sizeIcon: sizeIcon,
              colorIcon: colorIcon,
            ),
    );
  }
}
