import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/button/buttons.dart';
import 'package:travo_apps_1/view/dtomic/check_box/circle/check_box_an_average_circle.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

import '../../dtomic/check_box/rectangle/check_box_an_average_rectangle.dart';

class FilterReviewDraggableScrollableSheetWidget extends StatefulWidget {
  const FilterReviewDraggableScrollableSheetWidget({super.key});

  @override
  State<FilterReviewDraggableScrollableSheetWidget> createState() =>
      _FilterReviewDraggableScrollableSheetWidgetState();
}

class _FilterReviewDraggableScrollableSheetWidgetState
    extends State<FilterReviewDraggableScrollableSheetWidget> {
  @override
  Widget build(BuildContext context) {
    // List<Map<String, dynamic>> cartListTile = [
    //   {
    //     'image': ImageResultHotel.facilities,
    //     'title': 'Facilities',
    //     'onTap': () {
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(builder: (context) => const FacilitiesHotel()),
    //       );
    //     },
    //   },
    //   {
    //     'image': ImageResultHotel.propertyType,
    //     'title': 'Property Type',
    //     'onTap': () {
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(builder: (context) => const PropertyType()),
    //       );
    //     },
    //   },
    //   {
    //     'image': ImageResultHotel.sortBy,
    //     'title': 'Sort By',
    //     'onTap': () {
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(builder: (context) => const SortBy()),
    //       );
    //     },
    //   },
    // ];
    List<Map<String, dynamic>> cartIconTitle = [
      {
        'title': 'All (2,345)',
        'value': true,
      },
      {
        'title': 'With Comment (1,089)',
        'value': true,
      },
      {
        'title': 'With Photos (3,675)',
        'value': true,
      },
    ];
    List<Map<String, dynamic>> cardIconTitle = [
      {
        'title': 'High to Low Score',
        'value': true,
      },
      {
        'value': true,
        'title': 'Low to High Score',
      },
    ];

    bool isCheck = true;
    return Container(
      width: 411.w,
      height: 751.h,
      padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
      decoration: const BoxDecoration(
        color: Color(0xffF0F2F6),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Center(
            child: Container(
              width: 75,
              height: 5,
              decoration: BoxDecoration(
                  color: const Color(0xff2D3142),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  const TextWidget(
                    text: 'Choose Your Filter',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      TextWidget(
                        text: 'Type',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      const Expanded(
                        child: Divider(
                          color: Color(0xffE5E5E5),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  SizedBox(
                    width: 411.w,
                    height: 112.h,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            text: cartIconTitle[index]['title'],
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          CheckBoxAnAverageRectangle(
                            isCheck: isCheck == cartIconTitle[index]['value'],
                            onTap: () {
                              setState(() {
                                cartIconTitle[index]['value'] =
                                    !cartIconTitle[index]['value'];
                              });
                            },
                            width: 24,
                            color: AppColos.white,
                            borderColor: Colors.grey.shade400,
                            radius: 9,
                          ),
                        ],
                      ),
                      itemCount: cartIconTitle.length,
                      separatorBuilder: (context, index) => SizedBox(
                        height: 20.h,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    children: [
                      TextWidget(
                        text: 'Sort By',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      const Expanded(
                        child: Divider(
                          color: Color(0xffE5E5E5),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 411.w,
                    height: 65.h,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            text: cardIconTitle[index]['title'],
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          CheckBoxAnAverageCircle(
                            isCheck: isCheck == cardIconTitle[index]['value'],
                            onTap: () {
                              setState(() {
                                cardIconTitle[index]['value'] =
                                    !cardIconTitle[index]['value'];
                              });
                            },
                            width: 24.w,
                            color: AppColos.white,
                            borderColor: Colors.grey.shade400,
                          ),
                        ],
                      ),
                      itemCount: cardIconTitle.length,
                      separatorBuilder: (context, index) => SizedBox(
                        height: 20.h,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  TextWidget(
                    text: 'Rating',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  SizedBox(
                    width: 411.w,
                    child: RatingBar.builder(
                      unratedColor: const Color(0xffE0DDF5),
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemSize: 40,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 11),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Buttons(
                    text: 'Apply',
                    isText: true,
                    borderColor: AppColos.linear,
                    colorText: AppColos.white,
                    fontSizeText: 18,
                    fontWeightText: FontWeight.bold,
                    borderRadius: 50.r,
                    height: 50.h,
                    width: 411.w,
                    onPressed: () {
                      context.pop();
                    },
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Buttons(
                    text: 'Reset',
                    isText: true,
                    borderColor: const Color(0xffe4e3f3),
                    colorText: AppColos.linear,
                    fontSizeText: 18,
                    fontWeightText: FontWeight.bold,
                    borderRadius: 50.r,
                    height: 50.h,
                    width: 411.w,
                    onPressed: () {
                      context.pop();
                    },
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
