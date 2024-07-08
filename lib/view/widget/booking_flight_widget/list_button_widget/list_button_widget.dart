import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

class ListButtonWidget extends StatelessWidget {
  const ListButtonWidget({
    super.key,
    required this.isActive,
    required this.text,
  });

  final bool isActive;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110.w,
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.r),
        color: isActive ? const Color(0xffFE9C5E) : const Color(0xffE0DDF5),
      ),
      child: Center(
        child: TextWidget(
          text: text,
          fontSize: 15.sp,
          fontWeight: FontWeight.bold,
          color: isActive ? AppColos.white : const Color(0xff6022AB),
        ),
      ),
    );
  }
}
