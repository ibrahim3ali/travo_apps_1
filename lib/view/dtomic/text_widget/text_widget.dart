import 'package:flutter/material.dart';

import '../../../core/constants/app_colos.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w500,
    this.color = AppColos.white,
  });

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
          ),
    );
  }
}
