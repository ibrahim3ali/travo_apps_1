import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/core/constants/assets.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

class ImageCardAppBarThree extends StatelessWidget {
  const ImageCardAppBarThree({
    super.key,
    // this.topIcon = 60,
    this.leftIconLeft = 25,
    // this.widthIcon = 32,
    // this.heightIcon = 32,
    // this.radiusIcon = 10,
    // this.sizeIconLeft = 12,
    this.colorBorderIcon = AppColos.white,
    this.colorIconLeft = AppColos.nero,
    this.iconLeft = Icons.arrow_back_sharp,
    this.rightIconRight = 25,
    this.imageIcon = '',
    this.topTitle = 58,
    this.lsftTitle,
    this.rightTitle,
    this.fontSizeTitle = 30,
    this.title = '',
    this.fontWeightTitle = FontWeight.w500,
    this.colorTitle = AppColos.white,
    this.onPressedFavorite,
    this.onTap,
    this.onTapIcon,
    this.isIconTwo = true,
    required this.isColumn,
    this.children,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.leftColumn,
    this.rightColumn,
    this.topColumn,
    this.bottomColumn,
    this.widthColumn,
    this.heightColumn,
  });

  // final double? topIcon, leftIconLeft, widthIcon, heightIcon, sizeIconLeft;
  // final double radiusIcon;
  final double leftIconLeft;
  final Color? colorBorderIcon;
  final IconData? iconLeft;
  final double? rightIconRight;
  final void Function()? onTap;
  final Color? colorIconLeft;
  final String imageIcon;
  final double? topTitle, lsftTitle, rightTitle, fontSizeTitle;
  final String title;
  final FontWeight? fontWeightTitle;
  final Color? colorTitle;
  final void Function()? onPressedFavorite;
  final void Function()? onTapIcon;
  final bool isIconTwo, isColumn;
  final List<Widget>? children;
  final CrossAxisAlignment crossAxisAlignment;
  final double? leftColumn,
      rightColumn,
      topColumn,
      bottomColumn,
      widthColumn,
      heightColumn;

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
          top: 50,
          left: leftIconLeft,
          child: InkWell(
            onTap: onTapIcon,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: colorBorderIcon,
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Center(
                child: Icon(
                  iconLeft,
                  color: colorIconLeft,
                  size: 18,
                ),
              ),
            ),
          ),
        ),
        if (isIconTwo)
          Positioned(
            top: topTitle,
            right: rightIconRight,
            child: InkWell(
              onTap: onTap,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: colorBorderIcon,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Center(
                  child: SizedBox(
                    width: 50.w,
                    height: 50.w,
                    child: Image.asset(
                      fit: BoxFit.fill,
                      imageIcon,
                    ),
                  ),
                ),
              ),
            ),
          ),
        if (isColumn)
          Positioned(
            left: leftColumn,
            right: rightColumn,
            top: topColumn,
            bottom: bottomColumn,
            child: SizedBox(
              width: widthColumn,
              height: heightColumn,
              child: Column(
                crossAxisAlignment: crossAxisAlignment,
                children: children!,
              ),
            ),
          )
        else
          Positioned(
            top: topTitle,
            left: lsftTitle,
            right: rightTitle,
            child: TextWidget(
              text: title,
              fontSize: fontSizeTitle,
              fontWeight: fontWeightTitle,
              color: colorTitle,
            ),
          ),
      ],
    );
  }
}
