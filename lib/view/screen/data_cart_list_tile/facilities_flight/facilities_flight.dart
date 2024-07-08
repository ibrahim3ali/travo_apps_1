import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/button/buttons.dart';

import '../../../../core/constants/assets.dart';
import '../../../dtomic/check_box/rectangle/check_box_an_average_rectangle.dart';
import '../../../dtomic/image_card/image_card_one.dart';
import '../../../dtomic/text_widget/text_widget.dart';

class FacilitiesFlight extends StatefulWidget {
  const FacilitiesFlight({super.key});

  @override
  State<FacilitiesFlight> createState() => _FacilitiesFlightState();
}

class _FacilitiesFlightState extends State<FacilitiesFlight> {
  List<Map<String, dynamic>> cartIconTitleOne = [
    {
      'image': ImagefacilitiesHotel.wifi,
      'title': 'Wifi',
      'value': true,
    },
    {
      'image': ImagefacilitiesHotel.baggage,
      'title': 'Baggage',
      'value': true,
    },
    {
      'image': ImagefacilitiesHotel.power,
      'title': 'Power / USB Port',
      'value': true,
    },
    {
      'image': ImagefacilitiesHotel.restaurant,
      'title': 'Restaurant',
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
            ImageCardOne(
              onTapIcon: () {
                context.pop();
              },
              textBottom: 0,
              textLeft: 122.w,
              textRight: 123.w,
              textTop: 60.h,
              title: 'Facilities',
            ),
            Padding(
              padding: REdgeInsets.only(
                left: 25,
                right: 25,
                top: 20,
                bottom: 52,
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
                    height: 200.h,
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
                        height: 25,
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
