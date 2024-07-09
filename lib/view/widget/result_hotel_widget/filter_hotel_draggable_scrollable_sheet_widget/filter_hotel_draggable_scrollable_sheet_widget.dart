import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/button/buttons.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

import '../../../../core/app_routers/routes_name.dart';
import '../../../../core/constants/assets.dart';

class FilterHotelDraggableScrollableSheetWidget extends StatefulWidget {
  const FilterHotelDraggableScrollableSheetWidget({super.key});

  @override
  State<FilterHotelDraggableScrollableSheetWidget> createState() =>
      _FilterHotelDraggableScrollableSheetWidgetState();
}

class _FilterHotelDraggableScrollableSheetWidgetState
    extends State<FilterHotelDraggableScrollableSheetWidget> {
  RangeValues _values = const RangeValues(10.0, 300.0);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> cartListTile = [
      {
        'image': ImageResultHotel.facilities,
        'title': 'Facilities',
        'onTap': () {
          context.pushNamed(RoutesName.facilitiesHotel);
        },
      },
      {
        'image': ImageResultHotel.propertyType,
        'title': 'Property Type',
        'onTap': () {
          context.pushNamed(RoutesName.propertyType);
        },
      },
      {
        'image': ImageResultHotel.sortBy,
        'title': 'Sort By',
        'onTap': () {
          context.pushNamed(RoutesName.sortByHotel);
        },
      },
    ];
    return Container(
      // width: 375,
      height: 751.h,
      padding: REdgeInsets.only(left: 25, right: 25, top: 20),
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
          const SizedBox(
            height: 35,
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
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  const TextWidget(
                    text: 'Budget',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  RangeSlider(
                    min: 0.0,
                    max: 500.0,
                    divisions: 50,
                    labels: RangeLabels('\$${_values.start.round()}',
                        '\$${_values.end.round()}'),
                    values: _values,
                    onChanged: (value) {
                      setState(() {
                        _values = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const TextWidget(
                    text: 'Hotel Class',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  RatingBar.builder(
                    unratedColor: const Color(0xffE0DDF5),
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      if (kDebugMode) {
                        print(rating);
                      }
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 411.w,
                    height: MediaQuery.sizeOf(context).height * 0.40.h,
                    child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: cartListTile[index]['onTap'],
                            child: Container(
                              width: 325,
                              height: 70,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 19, horizontal: 20),
                              decoration: BoxDecoration(
                                color: AppColos.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    cartListTile[index]['image'],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  TextWidget(
                                    text: cartListTile[index]['title'],
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                              height: 20,
                            ),
                        itemCount: cartListTile.length),
                  ),
                  const SizedBox(
                    height: 20,
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
                      context.pushNamed(RoutesName.hotelPicture);

                      context.pop();
                    },
                  ),
                  const SizedBox(
                    height: 15,
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
                  const SizedBox(
                    height: 15,
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
