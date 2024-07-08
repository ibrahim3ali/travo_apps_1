import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/core/constants/assets.dart';
import 'package:travo_apps_1/view/dtomic/button/buttons.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

class TwoButtonWidget extends StatelessWidget {
  const TwoButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Buttons(
          width: 155.w,
          borderColor: AppColos.white,
          onPressed: () {},
          child: Row(
            children: [
              Image.asset(ImagesAll.imageAll2),
              SizedBox(
                width: 12.w,
              ),
              TextWidget(
                text: 'Google',
                fontSize: 18.sp,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ],
          ),
        ),
        Buttons(
          width: 155.w,
          borderColor: const Color(0xff3C5A9A),
          onPressed: () {},
          child: Row(
            children: [
              Image.asset(ImagesAll.imageAll3),
              SizedBox(
                width: 10.5.w,
              ),
              TextWidget(
                text: 'Facebook',
                fontSize: 18.sp,
                fontWeight: FontWeight.w900,
                color: AppColos.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
