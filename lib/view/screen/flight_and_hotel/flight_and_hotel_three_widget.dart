import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/app_routers/routes_name.dart';

import '../../../core/constants/app_colos.dart';
import '../../../core/constants/assets.dart';
import '../../dtomic/button/buttons.dart';
import '../../dtomic/image_card/image_card_one.dart';
import '../../dtomic/text_widget/text_widget.dart';
import '../../widget/booking_hotel_widget/list_tile_card_widget/list_tile_card_widget.dart';

class FlightAndHotelThreeWidget extends StatefulWidget {
  const FlightAndHotelThreeWidget({
    super.key,
  });

  @override
  State<FlightAndHotelThreeWidget> createState() =>
      _FlightAndHotelThreeWidgetState();
}

class _FlightAndHotelThreeWidgetState extends State<FlightAndHotelThreeWidget> {
  List<Map<String, dynamic>> listTitle = [
    {
      'image': ImageHome.map,
      'title': 'Destination',
      'subTitle': 'South Korea',
      'onTap': () {},
    },
    {
      'image': ImageHome.date,
      'title': 'Select Date',
      'subTitle': '13 Feb - 18 Feb 2021',
      'onTap': () {},
    },
    {
      'image': ImageHome.room,
      'title': 'Guest and Room',
      'subTitle': '2 Guest, 1 Room',
      'onTap': () {},
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImageCardOne(
            onTapIcon: () {
              Navigator.pop(context);
            },
            fontSizeTitle: 30.sp,
            fontWeightTitle: FontWeight.bold,
            distance: 0,
            title: 'Book Your',
            subTitle: 'Flight and Hotel',
            fontSizeSubTitle: 30.sp,
            fontWeightSubTitle: FontWeight.bold,
            colorTitle: AppColos.white,
          ),
          Padding(
            padding: REdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              width: 411.w,
              height: 250.h,
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: listTitle[index]['onTap'],
                    child: ListTileCardWidget(
                      leading: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          // color: const Color(0xffFE9C5E),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image.asset(listTitle[index]['image']),
                      ),
                      title: TextWidget(
                        text: listTitle[index]['title'],
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      isSubTitle: true,
                      subtitle: TextWidget(
                        text: listTitle[index]['subTitle'],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
                itemCount: 3,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: REdgeInsets.only(
          right: 25,
          left: 25,
          bottom: 50,
        ),
        child: Buttons(
          onPressed: () {
            context.pop();
            context.pushNamed(RoutesName.addPassengers);
          },
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
