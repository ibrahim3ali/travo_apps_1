import 'package:flutter/material.dart';

import '../../../core/constants/app_colos.dart';
import '../text_widget/text_widget.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
    this.width = 125,
    this.height = 50,
    this.borderColor = AppColos.linear,
    this.borderRadius = 50,
    this.onPressed,
    this.text = '',
    this.fontSizeText,
    this.fontWeightText,
    this.colorText = AppColos.white,
    this.isText = false,
    this.child, this.padding,
  });
  final double? width;
  final double? height;
  final Color? borderColor;
  final double borderRadius;
  final void Function()? onPressed;
  final String text;
  final double? fontSizeText;
  final FontWeight? fontWeightText;
  final Color? colorText;
  final bool isText;
  final Widget? child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          padding:padding ,
          backgroundColor: borderColor,
          shape: RoundedRectangleBorder(
            
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        onPressed: onPressed,
        child: Center(
          child: isText
              ? TextWidget(
                  text: text,
                  fontSize: fontSizeText,
                  fontWeight: fontWeightText,
                  color: colorText,
                )
              : child,
        ),
      ),
    );
  }
}
