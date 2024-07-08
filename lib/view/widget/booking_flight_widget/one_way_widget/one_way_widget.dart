import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colos.dart';
import '../../../../core/constants/assets.dart';
import '../../../dtomic/title_widget/title_widget.dart';

class OneWayWidget extends StatefulWidget {
  const OneWayWidget({
    super.key,
    // required this.itamIcon,
  });

  @override
  State<OneWayWidget> createState() => _OneWayWidgetState();
}

class _OneWayWidgetState extends State<OneWayWidget> {
  // final List<Map<String, dynamic>> itamIcon;
  List<Map<String, dynamic>> itamIcon = [
    {
      'image': ImageBookingFlight.from,
      'title': 'From',
      'subTitle': 'Jakarta',
    },
    {
      'image': ImageBookingFlight.to,
      'title': 'To',
      'subTitle': 'Surabaya',
    },
    {
      'image': ImageBookingFlight.departure,
      'title': 'Departure',
      'subTitle': 'Select Date',
    },
    {
      'image': ImageBookingFlight.passengers,
      'title': 'Passengers',
      'subTitle': '1 Passenger',
    },
    {
      'image': ImageBookingFlight.classEonomy,
      'title': 'Class',
      'subTitle': 'Economy',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 411.w,
      height: MediaQuery.sizeOf(context).height * 0.55,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => SizedBox(
              height: 10.h,
            ),
            itemCount: itamIcon.length,
            itemBuilder: (context, index) {
              return Container(
                width: 411.w,
                height: 70.h,
                padding: REdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 11,
                ),
                decoration: BoxDecoration(
                    color: AppColos.white,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Row(
                  children: [
                    Image.asset(itamIcon[index]['image']),
                    SizedBox(
                      width: 15.w,
                    ),
                    TitleWidget(
                      title: itamIcon[index]['title'],
                      colorSubTitle: Colors.black,
                      colorTitle: const Color(0xff636363),
                      crossAxisAlignment: CrossAxisAlignment.start,
                      distance: 12.h,
                      fontSizeSubTitle: 14.sp,
                      fontSizeTitle: 12.sp,
                      fontWeightSubTitle: FontWeight.w500,
                      fontWeightTitle: FontWeight.w400,
                      subTitle: itamIcon[index]['subTitle'],
                    ),
                  ],
                ),
              );
            },
          ),
          Positioned.fill(
            left: 260.w,
            bottom: 590.h,
            child: Image.asset(ImageBookingFlight.way),
          )
        ],
      ),
    );
  }
}
