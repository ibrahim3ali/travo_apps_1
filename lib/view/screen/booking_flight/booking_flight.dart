import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';

import '../../../core/app_routers/routes_name.dart';
import '../../dtomic/button/buttons.dart';
import '../../dtomic/image_card/image_card_app_bar_one.dart';
import '../../widget/booking_flight_widget/list_button_widget/list_button_widget.dart';
import '../../widget/booking_flight_widget/multi_city_widget/multi_city_widget.dart';
import '../../widget/booking_flight_widget/one_way_widget/one_way_widget.dart';
import '../../widget/booking_flight_widget/round_trip_widget/round_trip_widget.dart';

class BookingFlight extends StatefulWidget {
  const BookingFlight({super.key});

  @override
  State<BookingFlight> createState() => _BookingFlightState();
}

class _BookingFlightState extends State<BookingFlight> {
  int _index = 0;
  final int _maxIdex = 2;
  void _incrementIndex() {
    if (_index < _maxIdex) {
      setState(() {
        _index++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> itam = [
      {
        'active': false,
        'text': 'One way',
        'screen': const OneWayWidget(),
        'onPressed': () {
          _incrementIndex();
        },
      },
      {
        'active': true,
        'text': 'Round Trip',
        'screen': const RoundTripWidget(),
        'onPressed': () {
          _incrementIndex();
        },
      },
      {
        'active': true,
        'text': 'Multi-City',
        'screen': const MultiCityWidget(),
        'onPressed': () {
          context.pushNamed(RoutesName.resultFlight);
        },
      },
    ];

    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SizedBox(
        height: height,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ImageCardAppBarOne(
              onTapIcon: () {
                context.goNamed(RoutesName.home);
              },
              fontWeightTitle: FontWeight.bold,
              distance: 0.h,
              title: 'Book Your',
              subTitle: 'Flight',
              fontSizeSubTitle: 29.sp,
              fontWeightSubTitle: FontWeight.bold,
              colorTitle: AppColos.white,
            ),
            Positioned.fill(
              left: 25,
              right: 25,
              top: 180,
              child: SizedBox(
                width: 411.w,
                height: height,
                child: Column(
                  children: [
                    SizedBox(
                      width: 411.w,
                      height: 40.h,
                      child: Row(
                        children: List.generate(
                          itam.length,
                          (index) => Row(
                            children: [
                              ListButtonWidget(
                                isActive: index == _index,
                                text: itam[index]['text'],
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned.fill(
              left: 25,
              right: 25,
              top: 230,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      width: 411.w,
                      height: height * 0.73.h,
                      child: PageView(
                        children: [
                          itam[_index]['screen'],
                        ],
                        onPageChanged: (pageIndex) {
                          setState(() {
                            pageIndex == _index;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            )
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
          onPressed: itam[_index]['onPressed'],
          width: 411.w,
          borderColor: AppColos.linear,
          borderRadius: 30,
          isText: true,
          text: 'Search',
          fontSizeText: 20.sp,
          fontWeightText: FontWeight.bold,
          colorText: AppColos.white,
        ),
      ),
    );
  }
}
