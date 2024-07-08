import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

class ContainerBoolWidget extends StatelessWidget {
  const ContainerBoolWidget({
    super.key,
    required this.isActive,
    required this.number,
    required this.title,
  });

  final bool isActive;
  final String number, title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 30.w,
          height: 30.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive ? AppColos.white : const Color(0xff9f93e2),
          ),
          child: Center(
            child: TextWidget(
              text: number,
              fontSize: 14.sp,
              fontWeight: isActive ? FontWeight.w500 : FontWeight.w400,
              color: isActive ? AppColos.linear : AppColos.white,
            ),
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        TextWidget(
          text: title,
          fontSize: 12.sp,
          fontWeight: isActive ? FontWeight.w500 : FontWeight.w400,
          color: isActive ? AppColos.white : AppColos.white,
        ),
      ],
    );
  }
}
