import 'package:flutter/material.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.title = '',
    this.colorTitle,
    this.fontSizeTitle,
    this.fontWeightTitle,
    this.subTitle = '',
    this.colorSubTitle,
    this.fontSizeSubTitle,
    this.fontWeightSubTitle,
    this.distance,
  });
  final CrossAxisAlignment crossAxisAlignment;
  final String title;
  final Color? colorTitle;
  final double? fontSizeTitle;
  final FontWeight? fontWeightTitle;
  final String subTitle;
  final Color? colorSubTitle;
  final double? fontSizeSubTitle;
  final FontWeight? fontWeightSubTitle;
  final double? distance;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        TextWidget(
          text: title,
          color: colorTitle,
          fontSize: fontSizeTitle,
          fontWeight: fontWeightTitle,
        ),
        SizedBox(
          height: distance,
        ),
        TextWidget(
          text: subTitle,
          color: colorSubTitle,
          fontSize: fontSizeSubTitle,
          fontWeight: fontWeightSubTitle,
        ),
      ],
    );
  }
}
