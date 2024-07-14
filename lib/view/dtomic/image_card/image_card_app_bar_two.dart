import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/core/constants/assets.dart';
import 'package:travo_apps_1/view/dtomic/form/custom_text_form_field.dart';
import 'package:travo_apps_1/view/dtomic/title_widget/title_widget.dart';

import '../../../core/constants/image_app_bar.dart';

class ImageCardAppBarTwo extends StatelessWidget {
  const ImageCardAppBarTwo({
    super.key,
    required this.formfield,
    required this.searchController,
    this.onTap,
    required this.paddingList,
    required this.paddingForm,
    this.title = '',
    this.subTitle = '',
    this.colorText = AppColos.white,
    this.fontSizeSubTitle,
    this.fontWeightTitle,
    this.fontWeightSubTitle,
    this.distance,
    this.widthRowOne,
    // this.widthRowTwo,
    this.onPressedIcon,
    this.icon,
    this.iconColor = AppColos.white,
    this.widthImage,
    this.colorImage = AppColos.white,
    this.radiusImage = 10,
    required this.image,
    this.fitImage = BoxFit.contain,
    // required this.heightColumn,
    this.hintTextForm,
    this.colorForm = Colors.black,
    this.prefixIconForm,
    this.inputFormatters,
  });

  final GlobalKey<FormState> formfield;
  final TextEditingController searchController;
  final Function()? onTap;
  final EdgeInsetsGeometry paddingList, paddingForm;
  final String title, subTitle;
  final Color colorText, iconColor;
  final double?  fontSizeSubTitle, distance, widthRowOne;
  // widthRowTwo;
  final FontWeight? fontWeightTitle, fontWeightSubTitle;
  final void Function()? onPressedIcon;
  final IconData? icon;
  final double? widthImage;
  final Color? colorImage;
  final double radiusImage;
  final String image;
  final BoxFit? fitImage;
  // final double heightColumn;
  final String? hintTextForm;
  final Color? colorForm;
  final Widget? prefixIconForm;
  final List<TextInputFormatter>? inputFormatters;

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
        Padding(
          padding: paddingList,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleWidget(
                title: title,
                colorTitle: colorText,
                fontSizeTitle: ImageAppBar.fontsizeTitle,
                fontWeightTitle: fontWeightTitle,
                distance: distance,
                subTitle: subTitle,
                fontSizeSubTitle: fontSizeSubTitle,
                fontWeightSubTitle: fontWeightSubTitle,
                colorSubTitle: colorText,
              ),
              SizedBox(
                width: widthRowOne,
              ),
              IconButton(
                onPressed: onPressedIcon,
                icon: Icon(
                  icon,
                  color: iconColor,
                ),
              ),
              // SizedBox(
              //   width: widthRowTwo,
              // ),
              Container(
                width: widthImage,
                height: widthImage,
                decoration: BoxDecoration(
                  color: colorImage,
                  borderRadius: BorderRadius.circular(radiusImage),
                ),
                child: Image.asset(
                  image,
                  fit: fitImage,
                ),
              )
            ],
          ),
        ),
        // SizedBox(
        //   height: heightColumn,
        // ),
        Form(
          key: formfield,
          child: Padding(
            padding: paddingForm,
            child: CustomTextFormField(
              contentPadding: REdgeInsets.all(15),
              hintText: hintTextForm,
              color: colorForm,
              inputFormatters: inputFormatters,
              prefixIcon: prefixIconForm,
              controller: searchController,
              onTap: onTap,
            ),
          ),
        ),
      ],
    );
  }
}
