import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';
import 'package:travo_apps_1/view/dtomic/title_widget/title_widget.dart';

import '../../../core/app_routers/routes_name.dart';
import '../../../core/constants/assets.dart';
import '../../dtomic/button/buttons.dart';
import '../../dtomic/image_card/image_card_app_bar_three.dart';

class ResultFlight extends StatefulWidget {
  const ResultFlight({super.key});

  @override
  State<ResultFlight> createState() => _ResultFlightState();
}

class _ResultFlightState extends State<ResultFlight> {
  final List<Map<String, dynamic>> flightCard = [
    {
      'image': ImageResultFlight.nns24,
      'departure': '05:21am',
      'flightNo': 'NNS24',
      'arrive': '08:43am',
      'number': '\$215',
    },
    {
      'image': ImageResultFlight.alt03,
      'departure': '06:01am',
      'flightNo': 'ALT03',
      'arrive': '09:15am',
      'number': '\$249',
    },
    {
      'image': ImageResultFlight.flg15,
      'departure': '04:30pm',
      'flightNo': 'FLG15',
      'arrive': '08:49pm',
      'number': '\$253',
    },
    {
      'image': ImageResultFlight.htl09,
      'departure': '08:30pm',
      'flightNo': 'HTL09',
      'arrive': '00:01am',
      'number': '\$227',
    },
    {
      'image': ImageResultFlight.lnr14,
      'departure': '05:21',
      'flightNo': 'LNR14',
      'arrive': '08:43',
      'number': '\$124',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SizedBox(
        height: height,
        child: Stack(
          children: [
            ImageCardAppBarThree(
              isColumn: true,
              isIconTwo: true,
              onTapIcon: () {
                context.pop();
              },
              imageIcon: ImageResultHotel.solid,
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const FilterFlightDraggableScrollableSheetWidget();
                  },
                );
              },
              leftIconLeft: 25.w,
              rightColumn: 79.w,
              leftColumn: 100.w,
              topColumn: 60.h,
              widthColumn: 216.w,
              heightColumn: 68.h,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 13,
                    ),
                    const TextWidget(
                      text: 'JKT',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColos.white,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const SizedBox(
                      width: 30,
                      child: Divider(
                        color: AppColos.white,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset(ImageResultFlight.path),
                    const SizedBox(
                      width: 5,
                    ),
                    const SizedBox(
                      width: 30,
                      child: Divider(
                        color: AppColos.white,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const TextWidget(
                      text: 'SBY',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColos.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const TextWidget(
                      text: '3 Feb, 2021',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColos.white,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: AppColos.white),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const TextWidget(
                      text: '1 Adult',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColos.white,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: AppColos.white),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const TextWidget(
                      text: 'Economy',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColos.white,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: AppColos.white,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: const Center(
                          child: Icon(
                        Icons.keyboard_arrow_down,
                        size: 12,
                      )),
                    ),
                  ],
                ),
              ],
            ),
            Positioned.fill(
              top: 120,
              right: 25,
              left: 30,
              child: SizedBox(
                width: 411.w,
                height: height,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.separated(
                        itemCount: flightCard.length,
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 20,
                        ),
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Container(
                                width: 351.w,
                                padding: REdgeInsets.only(
                                  left: 15,
                                  right: 15,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColos.white,
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(flightCard[index]['image']),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          width: 20.w,
                                          height: 20.w,
                                          decoration: const BoxDecoration(
                                              color: Color(0xffE5E5E5),
                                              shape: BoxShape.circle),
                                        ),
                                        SizedBox(
                                          height: 100.h,
                                          child: const VerticalDivider(
                                            color: Color(0xffE5E5E5),
                                          ),
                                        ),
                                        Container(
                                          width: 20.w,
                                          height: 20.w,
                                          decoration: const BoxDecoration(
                                              color: Color(0xffE5E5E5),
                                              shape: BoxShape.circle),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 25.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 12.h,
                                        ),
                                        TitleWidget(
                                          title: 'Departure',
                                          fontSizeTitle: 14.sp,
                                          fontWeightTitle: FontWeight.w400,
                                          colorTitle: const Color(0xff636363),
                                          distance: 10.h,
                                          subTitle: flightCard[index]
                                              ['departure'],
                                          fontSizeSubTitle: 16.sp,
                                          fontWeightSubTitle: FontWeight.w800,
                                          colorSubTitle: Colors.black,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        TitleWidget(
                                          title: 'Flight No.',
                                          fontSizeTitle: 14.sp,
                                          fontWeightTitle: FontWeight.w400,
                                          colorTitle: const Color(0xff636363),
                                          distance: 10.h,
                                          subTitle: flightCard[index]
                                              ['flightNo'],
                                          fontSizeSubTitle: 16.sp,
                                          fontWeightSubTitle: FontWeight.w800,
                                          colorSubTitle: Colors.black,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                        ),
                                        SizedBox(
                                          height: 11.h,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 42.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TitleWidget(
                                          title: 'Arrive',
                                          fontSizeTitle: 14.sp,
                                          fontWeightTitle: FontWeight.w400,
                                          colorTitle: const Color(0xff636363),
                                          distance: 10.h,
                                          subTitle: flightCard[index]['arrive'],
                                          fontSizeSubTitle: 16.sp,
                                          fontWeightSubTitle: FontWeight.w800,
                                          colorSubTitle: Colors.black,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                        ),
                                        SizedBox(
                                          height: 44.h,
                                        ),
                                        TextWidget(
                                          text: flightCard[index]['number'],
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          height: 11.h,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FilterFlightDraggableScrollableSheetWidget extends StatefulWidget {
  const FilterFlightDraggableScrollableSheetWidget({super.key});

  @override
  State<FilterFlightDraggableScrollableSheetWidget> createState() =>
      _FilterFlightDraggableScrollableSheetWidgetState();
}

class _FilterFlightDraggableScrollableSheetWidgetState
    extends State<FilterFlightDraggableScrollableSheetWidget> {
  List<Map<String, dynamic>> itamTransit = [
    {
      'active': false,
      'text': 'Direct',
    },
    {
      'active': true,
      'text': '1 Transit',
    },
    {
      'active': true,
      'text': '2+ Transits',
    },
  ];
  // SfRangeValues _values = const SfRangeValues(0.0, 3.0);
  RangeValues _values = const RangeValues(10.0, 300.0);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> cartListTile = [
      {
        'image': ImageResultFlight.facilitiesIcon,
        'title': 'Facilities',
        'onTap': () {
          context.pushNamed(RoutesName.facilitiesFlight);
        },
      },
      {
        'image': ImageResultHotel.sortBy,
        'title': 'Sort By',
        'onTap': () {
          context.pushNamed(RoutesName.sortByflight);
        },
      },
    ];

    return Container(
      width: 411.w,
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
          SizedBox(
            height: 35.h,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: 'Choose Your Filter',
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  TextWidget(
                    text: 'Transit',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 411.w,
                    height: 50.h,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: itamTransit.length,
                      separatorBuilder: (context, index) => SizedBox(
                        width: 15.w,
                      ),
                      itemBuilder: (context, index) {
                        return Buttons(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            setState(() {
                              itamTransit[index]['active'] == index;
                              itamTransit[index]['active'] =
                                  !itamTransit[index]['active'];
                            });
                          },
                          borderColor: itamTransit[index]['active']
                              ? const Color(0xffE0DDF5)
                              : const Color(0xffFE9C5E),
                          borderRadius: 50,
                          colorText: itamTransit[index]['active']
                              ? const Color(0xff6022AB)
                              : AppColos.white,
                          fontSizeText: 15.sp,
                          fontWeightText: FontWeight.bold,
                          isText: true,
                          text: itamTransit[index]['text'],
                          width: 110,
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  TextWidget(
                    text: 'Transit Duration',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 20.h,
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
                  SizedBox(
                    height: 30.h,
                  ),
                  TextWidget(
                    text: 'Budget',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 20,
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
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    width: 411.w,
                    height: 160.h,
                    child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: cartListTile[index]['onTap'],
                            child: Container(
                              width: 411.w,
                              height: 70.h,
                              padding: REdgeInsets.symmetric(
                                  vertical: 19, horizontal: 20),
                              decoration: BoxDecoration(
                                color: AppColos.white,
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 30.w,
                                    height: 30.h,
                                    child: Image.asset(
                                      cartListTile[index]['image'],
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  TextWidget(
                                    text: cartListTile[index]['title'],
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(
                              height: 20.h,
                            ),
                        itemCount: cartListTile.length),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Buttons(
                    text: 'Apply',
                    isText: true,
                    borderColor: AppColos.linear,
                    colorText: AppColos.white,
                    fontSizeText: 18,
                    fontWeightText: FontWeight.bold,
                    borderRadius: 50,
                    height: 50.h,
                    width: 411.w,
                    onPressed: () {
                      context.pop();
                      context.pushNamed(RoutesName.selectSeat);
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
                    borderRadius: 50,
                    height: 50.h,
                    width: 411.w,
                    onPressed: () {
                      context.pop();
                    },
                  ),
                  SizedBox(
                    height: 15.h,
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
