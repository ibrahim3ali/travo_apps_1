import 'package:flutter/material.dart';

class RowTitleWidget extends StatelessWidget {
  const RowTitleWidget({
    super.key,
    this.icon,
    this.colorIcon,
    this.distance,
    this.title,
    this.supTitle,
    this.fontSizeTitle,
    this.fontSizeSubTitle,
    this.fontWeightTitle,
    this.fontWeightSubTitle,
    this.colorTitle,
    this.colorSubTitle,
  });
  final IconData? icon;
  final Color? colorIcon;
  final double? distance;
  final String? title;
  final String? supTitle;
  final double? fontSizeTitle;
  final double? fontSizeSubTitle;
  final FontWeight? fontWeightTitle;
  final FontWeight? fontWeightSubTitle;
  final Color? colorTitle;
  final Color? colorSubTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: colorIcon,
        ),
        SizedBox(
          width: distance,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: title,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: fontSizeTitle,
                      fontWeight: fontWeightTitle,
                      color: colorTitle,
                    ),
              ),
              TextSpan(
                text: supTitle,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: fontSizeSubTitle,
                      fontWeight: fontWeightSubTitle,
                      color: colorSubTitle,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
