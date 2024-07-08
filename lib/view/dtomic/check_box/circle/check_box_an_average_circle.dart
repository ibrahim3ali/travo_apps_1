import 'package:flutter/material.dart';

import '../../../../core/constants/app_colos.dart';
import 'active_check_box_container_circle.dart';
import 'not_active_check_box_circle.dart';

class CheckBoxAnAverageCircle extends StatelessWidget {
  const CheckBoxAnAverageCircle({
    super.key,
    this.width,
    this.color,
   
    this.borderColor = Colors.transparent,
    this.onTap,
    this.isCheck = true,
    this.borderWidth = 0.25,
    this.colorActive = AppColos.whiteViolet,
     this.shape=BoxShape.circle,
  });
  final double? width;
  final Color? color;
  final Color borderColor;
 
  final void Function()? onTap;
  final bool isCheck;
  final double borderWidth;
  final Color? colorActive;
  final BoxShape shape;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      
     
      onTap: onTap,
      child: isCheck
          ? NotActiveCheckBoxCircle(
              width: width,
              borderWidth: borderWidth,
              borderColor: borderColor,
              color: color,
            
              shape: shape,
            )
          : ActiveCheckBoxContainerCircle(
            shape: shape,
              width: width,
              colorActive: colorActive,
   
            ),
    );
  }
}
