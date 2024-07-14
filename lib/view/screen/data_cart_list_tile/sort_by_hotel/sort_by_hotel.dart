import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/button/buttons.dart';

import '../../../../core/app_routers/routes_name.dart';
import '../../../dtomic/check_box/circle/check_box_an_average_circle.dart';
import '../../../dtomic/image_card/image_card_app_bar_one.dart';
import '../../../dtomic/text_widget/text_widget.dart';

class SortByHotel extends StatefulWidget {
  const SortByHotel({super.key});

  @override
  State<SortByHotel> createState() => _SortByHotelState();
}

class _SortByHotelState extends State<SortByHotel> {
  bool value = false;
  List<Map<String, dynamic>> cartIconTitleThree = [
    {
      'title': 'Highest popularity',
      'value': true,
    },
    {
      'title': 'Lowest Price',
      'value': true,
    },
    {
      'title': 'Highest Price',
      'value': true,
    },
    {
      'title': 'Highest Rating',
      'value': true,
    },
    {
      'title': 'Nearest Distance',
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
              title: 'Sort by',
            ),
            Padding(
              padding: REdgeInsets.only(
                left: 25,
                right: 25,
                top: 20,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 411.w,
                    height: 300,
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

            context.pop();
            context.pushNamed(RoutesName.hotelPicture);
          },
          text: 'Apply',
          isText: true,
          fontSizeText: 16,
          fontWeightText: FontWeight.w500,
          borderColor: AppColos.linear,
          colorText: AppColos.white,
          borderRadius: 50,
          height: 50,
          width: 325,
        ),
      ),
    );
  }
}
