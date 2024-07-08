import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/button/buttons.dart';

import '../../../dtomic/check_box/rectangle/check_box_an_average_rectangle.dart';
import '../../../dtomic/image_card/image_card_one.dart';
import '../../../dtomic/text_widget/text_widget.dart';

class PropertyType extends StatefulWidget {
  const PropertyType({super.key});

  @override
  State<PropertyType> createState() => _PropertyTypeState();
}

class _PropertyTypeState extends State<PropertyType> {
  List<Map<String, dynamic>> cartIconTitleTwo = [
    {
      'title': 'Hostels',
      'value': true,
    },
    {
      'title': 'Resorts',
      'value': true,
    },
    {
      'title': 'Hotels',
      'value': true,
    },
    {
      'title': 'Villas',
      'value': true,
    },
    {
      'title': 'Guest Houses',
      'value': true,
    },
    {
      'title': 'Homestays',
      'value': true,
    },
    {
      'title': 'Apartments',
      'value': true,
    },
    {
      'title': 'Others',
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
              title: 'Property type',
            ),
            Padding(
              padding: const EdgeInsets.only(
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
                    height: 375.h,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            text: cartIconTitleTwo[index]['title'],
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          CheckBoxAnAverageRectangle(
                            isCheck:
                                isCheck == cartIconTitleTwo[index]['value'],
                            onTap: () {
                              setState(() {
                                cartIconTitleTwo[index]['value'] =
                                    !cartIconTitleTwo[index]['value'];
                              });
                            },
                            width: 24,
                            color: AppColos.white,
                            borderColor: Colors.grey.shade400,
                            radius: 9,
                          ),
                        ],
                      ),
                      itemCount: cartIconTitleTwo.length,
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
