import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/button/buttons.dart';
import 'package:travo_apps_1/view/dtomic/image_card/image_card_one.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

import '../../../../core/app_routers/routes_name.dart';
import '../../../../core/constants/assets.dart';
import '../../widget/booking_hotel_widget/list_tile_card_widget/list_tile_card_widget.dart';

class BookingHotel extends StatefulWidget {
  const BookingHotel({super.key});

  @override
  State<BookingHotel> createState() => _BookingHotelState();
}

class _BookingHotelState extends State<BookingHotel> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> listTitle = [
      {
        'image': ImageHome.map,
        'title': 'Destination',
        'subTitle': 'South Korea',
        'onTap': () {
          context.pushNamed(RoutesName.searchDestination);
        },
      },
      {
        'image': ImageHome.date,
        'title': 'Select Date',
        'subTitle': '13 Feb - 18 Feb 2021',
        'onTap': () {
          context.pushNamed(RoutesName.selectDate);
        },
      },
      {
        'image': ImageHome.room,
        'title': 'Guest and Room',
        'subTitle': '2 Guest, 1 Room',
        'onTap': () {
          context.pushNamed(RoutesName.guestAndRoom);
        },
      },
    ];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageCardOne(
              onTapIcon: () {
                context.goNamed(RoutesName.home);
              },
              title: 'Hotel Booking',
              fontSizeTitle: 30.sp,
              fontSizeSubTitle: 12.sp,
              subTitle: 'Choose your favorite hotel and enjoy the service',
            ),
            Padding(
              padding: REdgeInsets.only(
                left: 25,
                right: 25,
                top: 5,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 411.w,
                    height: MediaQuery.sizeOf(context).height * .50.h,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: listTitle[index]['onTap'],
                          child: ListTileCardWidget(
                            leading: Container(
                              width: 35.w,
                              height: 35.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                              ),
                              child: Image.asset(
                                listTitle[index]['image'],
                                fit: BoxFit.fill,
                              ),
                            ),
                            title: TextWidget(
                              text: listTitle[index]['title'],
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            isSubTitle: true,
                            subtitle: TextWidget(
                              text: listTitle[index]['subTitle'],
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        height: 20.h,
                      ),
                      itemCount: listTitle.length,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: REdgeInsets.only(
          bottom: 50,
          left: 25,
          right: 25,
        ),
        child: Buttons(
          onPressed: () {
            context.pop();

            context.pushNamed(RoutesName.resultHotel);
            context.pop();
          },
          borderColor: AppColos.linear,
          borderRadius: 50.r,
          colorText: AppColos.white,
          fontSizeText: 16.sp,
          fontWeightText: FontWeight.w700,
          isText: true,
          text: 'Search',
          width: 411.w,
        ),
      ),
    );
  }
}
