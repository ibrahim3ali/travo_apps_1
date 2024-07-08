import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

import '../../../core/constants/app_colos.dart';
import '../../../core/constants/assets.dart';
import '../title_widget/title_widget.dart';

class ImageCardOne extends StatelessWidget {
  const ImageCardOne({
    super.key,
    this.iconLeft = 25,
    this.onTapIcon,
    this.borderIconColor = AppColos.white,
    this.icon = Icons.arrow_back_sharp,
    this.iconColor = AppColos.nero,
    // this.textBottom = 13,
    // this.textLeft = 138,
    // this.textRight = 137,
    // this.textTop = 113,
    this.fontSizeTitle = 30,
    this.distance = 20,
    this.fontSizeSubTitle = 12,
    this.colorTitle = AppColos.white,
    this.title = '',
    this.subTitle = '',
    this.fontWeightTitle = FontWeight.w500,
    this.fontWeightSubTitle = FontWeight.w400,
    this.isTitle = true,
    this.widthTitle = 238,
    this.heightTitle = 80,
  });

  final double?
      // textBottom,
      // textLeft,
      // textRight,
      // textTop,
      fontSizeTitle,
      distance,
      fontSizeSubTitle;
  final double? iconLeft;
  final Color borderIconColor, iconColor, colorTitle;
  final IconData? icon;
  final String title, subTitle;
  final FontWeight? fontWeightTitle, fontWeightSubTitle;
  final bool isTitle;
  final double? widthTitle, heightTitle;
  final void Function()? onTapIcon;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 180.h,
          width: 411.w,
          child: Image.asset(
            ImagesAll.imageAll1,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 60,
          left: iconLeft,
          child: InkWell(
            onTap: onTapIcon,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: borderIconColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Center(
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 18,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 0.w,
          right: 0.w,
          top: 70.h,
          child: isTitle
              ? TitleWidget(
                  title: title,
                  colorTitle: colorTitle,
                  fontSizeTitle: fontSizeTitle,
                  fontWeightTitle: fontWeightTitle,
                  distance: distance,
                  subTitle: subTitle,
                  fontSizeSubTitle: fontSizeSubTitle,
                  fontWeightSubTitle: fontWeightSubTitle,
                  colorSubTitle: colorTitle,
                )
              : SizedBox(
                  width: widthTitle,
                  height: heightTitle,
                  child: Center(
                    child: TextWidget(
                      text: title,
                      color: colorTitle,
                      fontSize: fontSizeTitle,
                      fontWeight: fontWeightTitle,
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
