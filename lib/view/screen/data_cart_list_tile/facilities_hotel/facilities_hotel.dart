import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/button/buttons.dart';

import '../../../../../core/constants/assets.dart';
import '../../../dtomic/check_box/rectangle/check_box_an_average_rectangle.dart';
import '../../../dtomic/image_card/image_card_app_bar_one.dart';
import '../../../dtomic/text_widget/text_widget.dart';

class FacilitiesHotel extends StatefulWidget {
  const FacilitiesHotel({super.key});

  @override
  State<FacilitiesHotel> createState() => _FacilitiesHotelState();
}

class _FacilitiesHotelState extends State<FacilitiesHotel> {
  List<Map<String, dynamic>> cartIconTitleOne = [
    {
      'image': ImagefacilitiesHotel.wifi,
      'title': 'Wifi',
      'value': true,
    },
    {
      'image': ImagefacilitiesHotel.digitalTV,
      'title': 'Digital TV',
      'value': true,
    },
    {
      'image': ImagefacilitiesHotel.parkingArea,
      'title': 'Parking Area',
      'value': true,
    },
    {
      'image': ImagefacilitiesHotel.swimmingPool,
      'title': 'Swimming Pool',
      'value': true,
    },
    {
      'image': ImagefacilitiesHotel.currencyExchange,
      'title': 'Currency Exchange',
      'value': true,
    },
    {
      'image': ImagefacilitiesHotel.restaurant,
      'title': 'Restaurant',
      'value': true,
    },
    {
      'image': ImagefacilitiesHotel.carRental,
      'title': 'Car Rental',
      'value': true,
    },
    {
      'image': ImagefacilitiesHotel.hourFrontDesk,
      'title': '24-hour Front Desk',
      'value': true,
    },
  ];
  bool isCheck = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageCardAppBarOne(
              onTapIcon: () {
                context.pop();
              },
              title: 'Facilities',
            ),
            Padding(
              padding: REdgeInsets.only(
                left: 25,
                right: 25,
                top: 20,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            isCheck = !isCheck;
                          });
                        },
                        child: const TextWidget(
                          text: 'Select All',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff6155CC),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 411.w,
                    height: MediaQuery.sizeOf(context).height * 0.75.h,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(cartIconTitleOne[index]['image']),
                              const SizedBox(
                                width: 15,
                              ),
                              TextWidget(
                                text: cartIconTitleOne[index]['title'],
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          CheckBoxAnAverageRectangle(
                            isCheck:
                                isCheck == cartIconTitleOne[index]['value'],
                            onTap: () {
                              setState(() {
                                cartIconTitleOne[index]['value'] =
                                    !cartIconTitleOne[index]['value'];
                              });
                            },
                            width: 24,
                            color: AppColos.white,
                            borderColor: Colors.grey.shade400,
                            radius: 9,
                          ),
                        ],
                      ),
                      itemCount: cartIconTitleOne.length,
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 27,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 68,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: REdgeInsets.only(
          bottom: 20,
          left: 25,
          right: 25,
        ),
        child: Buttons(
          onPressed: () {
            context.pop();
          },
          text: 'Done',
          isText: true,
          fontSizeText: 18,
          fontWeightText: FontWeight.bold,
          borderColor: AppColos.linear,
          colorText: AppColos.white,
          borderRadius: 50,
          height: 50,
          width: 411,
        ),
      ),
    );
  }
}
