import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';

import '../../../core/app_routers/routes_name.dart';
import '../../dtomic/button/buttons.dart';
import '../../dtomic/image_card/image_card_one.dart';
import '../../widget/booking_flight_widget/list_button_widget/list_button_widget.dart';
import '../../widget/booking_flight_widget/one_way_widget/one_way_widget.dart';
import '../../widget/booking_flight_widget/round_trip_widget/round_trip_widget.dart';

class FlightAndHotel extends StatefulWidget {
  const FlightAndHotel({super.key});

  @override
  State<FlightAndHotel> createState() => _FlightAndHotelState();
}

class _FlightAndHotelState extends State<FlightAndHotel> {
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
          context.pushNamed(RoutesName.flightAndHotelThreeWidget);
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
            ImageCardOne(
              onTapIcon: () {
                context.goNamed(RoutesName.home);
              },
              fontSizeTitle: 29.sp,
              fontWeightTitle: FontWeight.bold,
              distance: 0.h,
              title: 'Book Your',
              subTitle: 'Flight and Hotel',
              fontSizeSubTitle: 29.sp,
              fontWeightSubTitle: FontWeight.bold,
              colorTitle: AppColos.white,
            ),
            Positioned.fill(
              left: 80,
              right: 71,
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

// class RoundTripFlightAndHotelWidget extends StatefulWidget {
//   const RoundTripFlightAndHotelWidget({
//     super.key,
//     // required this.itamIcon1,
//   });

//   @override
//   State<RoundTripFlightAndHotelWidget> createState() => _RoundTripFlightAndHotelWidgetState();
// }

// class _RoundTripFlightAndHotelWidgetState extends State<RoundTripFlightAndHotelWidget> {
//   // final List<Map<String, dynamic>> itamIcon1;
//   List<Map<String, dynamic>> itamIcon1 = [
//     {
//       'image': ImageBookingFlight.from,
//       'title': 'From',
//       'subTitle': 'Jakarta',
//     },
//     {
//       'image': ImageBookingFlight.to,
//       'title': 'To',
//       'subTitle': 'Surabaya',
//     },
//     {
//       'image': ImageBookingFlight.departure,
//       'title': 'Departure',
//       'subTitle': 'Select Date',
//     },
//     {
//       'image': ImageBookingFlight.departure,
//       'title': 'Return',
//       'subTitle': 'Select Date',
//     },
//     {
//       'image': ImageBookingFlight.passengers,
//       'title': 'Passengers',
//       'subTitle': '2 Adult, 2 Child, 1 Infant',
//     },
//     {
//       'image': ImageBookingFlight.classEonomy,
//       'title': 'Class',
//       'subTitle': 'Economy',
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 325,
//       height: 480,
//       child: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           ListView.separated(
//             physics: const NeverScrollableScrollPhysics(),
//             separatorBuilder: (context, index) => const SizedBox(
//               height: 10,
//             ),
//             itemCount: itamIcon1.length,
//             itemBuilder: (context, index) {
//               return Container(
//                 width: 325,
//                 height: 70,
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 20,
//                   vertical: 11,
//                 ),
//                 decoration: BoxDecoration(
//                     color: AppColos.white,
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Row(
//                   children: [
//                     Image.asset(itamIcon1[index]['image']),
//                     const SizedBox(
//                       width: 15,
//                     ),
//                     TitleWidget(
//                       title: itamIcon1[index]['title'],
//                       colorSubTitle: Colors.black,
//                       colorTitle: const Color(0xff636363),
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       distance: 12,
//                       fontSizeSubTitle: 14,
//                       fontSizeTitle: 12,
//                       fontWeightSubTitle: FontWeight.w500,
//                       fontWeightTitle: FontWeight.w400,
//                       subTitle: itamIcon1[index]['subTitle'],
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//           Positioned.fill(
//             left: 220,
//             bottom: 350,
//             child: Image.asset(ImageBookingFlight.way),
//           )
//         ],
//       ),
//     );
//   }
// }

// class OneWayFlightAndHotelWidget extends StatefulWidget {
//   const OneWayFlightAndHotelWidget({
//     super.key,
//     // required this.itamIcon,
//   });

//   @override
//   State<OneWayFlightAndHotelWidget> createState() => _OneWayFlightAndHotelWidgetState();
// }

// class _OneWayFlightAndHotelWidgetState extends State<OneWayFlightAndHotelWidget> {
//   // final List<Map<String, dynamic>> itamIcon;
//   List<Map<String, dynamic>> itamIcon = [
//     {
//       'image': ImageBookingFlight.from,
//       'title': 'From',
//       'subTitle': 'Jakarta',
//     },
//     {
//       'image': ImageBookingFlight.to,
//       'title': 'To',
//       'subTitle': 'Surabaya',
//     },
//     {
//       'image': ImageBookingFlight.departure,
//       'title': 'Departure',
//       'subTitle': 'Select Date',
//     },
//     {
//       'image': ImageBookingFlight.passengers,
//       'title': 'Passengers',
//       'subTitle': '2 Adult, 2 Child, 1 Infant',
//     },
//     {
//       'image': ImageBookingFlight.classEonomy,
//       'title': 'Class',
//       'subTitle': 'Economy',
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 325,
//       height: 390,
//       child: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           ListView.separated(
//             physics: const NeverScrollableScrollPhysics(),
//             separatorBuilder: (context, index) => const SizedBox(
//               height: 10,
//             ),
//             itemCount: itamIcon.length,
//             itemBuilder: (context, index) {
//               return Container(
//                 width: 325,
//                 height: 70,
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 20,
//                   vertical: 11,
//                 ),
//                 decoration: BoxDecoration(
//                     color: AppColos.white,
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Row(
//                   children: [
//                     Image.asset(itamIcon[index]['image']),
//                     const SizedBox(
//                       width: 15,
//                     ),
//                     TitleWidget(
//                       title: itamIcon[index]['title'],
//                       colorSubTitle: Colors.black,
//                       colorTitle: const Color(0xff636363),
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       distance: 12,
//                       fontSizeSubTitle: 14,
//                       fontSizeTitle: 12,
//                       fontWeightSubTitle: FontWeight.w500,
//                       fontWeightTitle: FontWeight.w400,
//                       subTitle: itamIcon[index]['subTitle'],
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//           Positioned.fill(
//             left: 220,
//             bottom: 250,
//             child: Image.asset(ImageBookingFlight.way),
//           )
//         ],
//       ),
//     );
//   }
// }
