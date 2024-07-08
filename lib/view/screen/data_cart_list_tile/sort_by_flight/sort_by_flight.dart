import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/app_routers/routes_name.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/button/buttons.dart';

import '../../../dtomic/check_box/circle/check_box_an_average_circle.dart';
import '../../../dtomic/image_card/image_card_one.dart';
import '../../../dtomic/text_widget/text_widget.dart';

class SortByflight extends StatefulWidget {
  const SortByflight({super.key});

  @override
  State<SortByflight> createState() => _SortByflightState();
}

class _SortByflightState extends State<SortByflight> {
  bool value = false;
  List<Map<String, dynamic>> cartIconTitleThree = [
    {
      'title': 'Earliest Departure',
      'value': true,
    },
    {
      'title': 'Latest Departure',
      'value': true,
    },
    {
      'title': 'Earliest Arrive',
      'value': true,
    },
    {
      'title': 'Latest Arrive',
      'value': true,
    },
    {
      'title': 'Shortest Duration',
      'value': true,
    },
    {
      'title': 'Lowest Price',
      'value': true,
    },
    {
      'title': 'Highest popularity',
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
                Navigator.pop(context);
              },
              textBottom: 0,
              textLeft: 135.w,
              textRight: 135.w,
              textTop: 60,
              title: 'Sort by',
            ),
            Padding(
              padding: REdgeInsets.only(
                left: 25,
                right: 25,
                top: 15,
                bottom: 52,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 411.w,
                    height: 350.h,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            text: cartIconTitleThree[index]['title'],
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          CheckBoxAnAverageCircle(
                            isCheck:
                                isCheck == cartIconTitleThree[index]['value'],
                            onTap: () {
                              setState(() {
                                cartIconTitleThree[index]['value'] =
                                    !cartIconTitleThree[index]['value'];
                              });
                            },
                            width: 24,
                            color: AppColos.white,
                            borderColor: Colors.grey.shade400,
                          ),
                        ],
                      ),
                      itemCount: cartIconTitleThree.length,
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 25,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
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
            context.pushNamed(RoutesName.selectSeat);
          },
          text: 'Apply',
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
