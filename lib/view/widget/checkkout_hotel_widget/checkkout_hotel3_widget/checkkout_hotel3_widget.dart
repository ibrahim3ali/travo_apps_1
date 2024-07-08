import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/app_routers/routes_name.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/core/constants/assets.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';
import 'package:travo_apps_1/view/dtomic/title_widget/title_widget.dart';

class CheckkoutHotel3Widget extends StatelessWidget {
  const CheckkoutHotel3Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 411.w,
          padding: REdgeInsets.only(
            top: 15,
            bottom: 19,
            left: 20,
            right: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: AppColos.white,
          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'Deluxe Room',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextWidget(
                        text: 'Free Cancellation',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      SizedBox(
                        height: 15.w,
                      ),
                      Row(
                        children: [
                          Image.asset(ImageCheckkoutHotel.king),
                          SizedBox(
                            width: 12.5.w,
                          ),
                          TextWidget(
                            text: '2 King Bed',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Image.asset(ImageSelectRoom.deluxeRoom),
                ],
              ),
              SizedBox(
                height: 14.5.h,
              ),
              const Divider(
                color: Color(0xffE5E5E5),
              ),
              SizedBox(
                height: 14.5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(ImageCheckkoutHotel.checkIn),
                      SizedBox(
                        width: 11.w,
                      ),
                      TitleWidget(
                        title: 'Check-in',
                        fontSizeTitle: 12.sp,
                        fontWeightTitle: FontWeight.w400,
                        colorTitle: const Color(0xff636363),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        subTitle: 'Fri, 13 Feb',
                        fontSizeSubTitle: 14.sp,
                        fontWeightSubTitle: FontWeight.w700,
                        colorSubTitle: Colors.black,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(ImageCheckkoutHotel.checkOut),
                      SizedBox(
                        width: 11.w,
                      ),
                      TitleWidget(
                        title: 'Check-out',
                        fontSizeTitle: 12.sp,
                        fontWeightTitle: FontWeight.w400,
                        colorTitle: const Color(0xff636363),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        subTitle: 'Sat, 14 Feb',
                        fontSizeSubTitle: 14.sp,
                        fontWeightSubTitle: FontWeight.w700,
                        colorSubTitle: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.w,
        ),
        Container(
          width: 411.w,
          padding: REdgeInsets.only(
            top: 17,
            bottom: 13,
            left: 20,
            right: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColos.white,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: '1 Night',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  TextWidget(
                    text: '\$245',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'Taxes and Fees',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  TextWidget(
                    text: 'Free',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 14.5.h,
              ),
              const Divider(
                color: Color(0xffE5E5E5),
              ),
              SizedBox(
                height: 14.5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'Total',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  TextWidget(
                    text: '\$245',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          width: 411.w,
          padding: REdgeInsets.only(
            top: 17,
            bottom: 13,
            left: 20,
            right: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: AppColos.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(ImageCheckkoutHotel.masterCard),
                  SizedBox(
                    width: 15.w,
                  ),
                  TitleWidget(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    title: 'Credit / Debit Card',
                    fontSizeTitle: 12.sp,
                    fontWeightTitle: FontWeight.w400,
                    colorTitle: const Color(0xff636363),
                    distance: 6,
                    subTitle: 'Master Card',
                    fontSizeSubTitle: 14,
                    fontWeightSubTitle: FontWeight.w500,
                    colorSubTitle: Colors.black,
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  context.pushNamed(RoutesName.addCard);
                },
                child: TextWidget(
                  text: 'Change',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColos.linear,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
