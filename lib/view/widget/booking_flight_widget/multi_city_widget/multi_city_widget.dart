import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_colos.dart';
import '../../../../core/constants/assets.dart';
import '../../../dtomic/text_widget/text_widget.dart';
import '../../../dtomic/title_widget/title_widget.dart';

class MultiCityWidget extends StatefulWidget {
  const MultiCityWidget({
    super.key,
  });

  @override
  State<MultiCityWidget> createState() => _MultiCityWidgetState();
}

class _MultiCityWidgetState extends State<MultiCityWidget> {
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
    return SingleChildScrollView(
      child: SizedBox(
        width: 411.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: 'Flight 1',
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            SizedBox(
              width: 411.w,
              height: MediaQuery.sizeOf(context).height * 0.60,
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
                    bottom: 300.h,
                    child: Image.asset(ImageBookingFlight.way),
                  )
                ],
              ),
            ),
            TextWidget(
              text: 'Flight 2',
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            SizedBox(
              width: 411.w,
              height: MediaQuery.sizeOf(context).height * 0.60,
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
                    bottom: 300.h,
                    child: Image.asset(ImageBookingFlight.way),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
