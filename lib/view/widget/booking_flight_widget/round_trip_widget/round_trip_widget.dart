import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colos.dart';
import '../../../../core/constants/assets.dart';
import '../../../dtomic/title_widget/title_widget.dart';

class RoundTripWidget extends StatefulWidget {
  const RoundTripWidget({
    super.key,
    // required this.itamIcon1,
  });

  @override
  State<RoundTripWidget> createState() => _RoundTripWidgetState();
}

class _RoundTripWidgetState extends State<RoundTripWidget> {
  // final List<Map<String, dynamic>> itamIcon1;
  List<Map<String, dynamic>> itamIcon1 = [
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
      'image': ImageBookingFlight.departure,
      'title': 'Return',
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
      width: 325.w,
      height: 480.h,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => SizedBox(
              height: 10.h,
            ),
            itemCount: itamIcon1.length,
            itemBuilder: (context, index) {
              return Container(
                width: 325.w,
                padding: REdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 11,
                ),
                decoration: BoxDecoration(
                    color: AppColos.white,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Row(
                  children: [
                    Image.asset(itamIcon1[index]['image']),
                    SizedBox(
                      width: 15.w,
                    ),
                    TitleWidget(
                      title: itamIcon1[index]['title'],
                      colorSubTitle: Colors.black,
                      colorTitle: const Color(0xff636363),
                      crossAxisAlignment: CrossAxisAlignment.start,
                      distance: 12.h,
                      fontSizeSubTitle: 14.sp,
                      fontSizeTitle: 12.sp,
                      fontWeightSubTitle: FontWeight.w500,
                      fontWeightTitle: FontWeight.w400,
                      subTitle: itamIcon1[index]['subTitle'],
                    ),
                  ],
                ),
              );
            },
          ),
          Positioned.fill(
            left: 260.w,
            bottom: 320.h,
            child: Image.asset(ImageBookingFlight.way),
          )
        ],
      ),
    );
  }
}
