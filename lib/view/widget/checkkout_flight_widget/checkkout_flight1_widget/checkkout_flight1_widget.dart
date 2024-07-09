import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/app_routers/routes_name.dart';

import '../../../../core/constants/app_colos.dart';
import '../../../../core/constants/assets.dart';
import '../../../dtomic/text_widget/text_widget.dart';
import '../../../dtomic/title_widget/title_widget.dart';

class CheckkoutFlight1Widget extends StatefulWidget {
  const CheckkoutFlight1Widget({super.key});

  @override
  State<CheckkoutFlight1Widget> createState() => _CheckkoutFlight1WidgetState();
}

class _CheckkoutFlight1WidgetState extends State<CheckkoutFlight1Widget> {
  bool isFlight = true;
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> addCardList = [
      {
        'image': ImageCheckkoutFlight.contactDetails,
        'title': 'Contact Details',
        'subTitle': 'Add Contact',
        'isFlight': false,
        'onTap': () {
          context.pushNamed(RoutesName.addCard);
        },
      },
      {
        'image': ImageCheckkoutFlight.passengersAndSeats,
        'title': 'Passengers & Seats',
        'subTitle': 'Add Passenger',
        'isFlight': true,
        'onTap': () {
          context.pushNamed(RoutesName.addPassenger);
        },
      },
      {
        'image': ImageCheckkoutFlight.promoCode,
        'title': 'Promo Code',
        'subTitle': 'Add Promo Code',
        'isFlight': false,
        'onTap': () {
          context.pushNamed(RoutesName.promoCode);
        },
      },
    ];

    final height = MediaQuery.sizeOf(context).height;

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 411.w,
            decoration: BoxDecoration(
                color: AppColos.white, borderRadius: BorderRadius.circular(12)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      right: 49, top: 17, left: 49, bottom: 22),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 13,
                      ),
                      const TitleWidget(
                        title: 'JKT',
                        fontSizeTitle: 24,
                        fontWeightTitle: FontWeight.w500,
                        colorTitle: Colors.black,
                        distance: 5,
                        subTitle: 'Jakarta',
                        fontSizeSubTitle: 14,
                        fontWeightSubTitle: FontWeight.w400,
                        colorSubTitle: Color(0xff636363),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const SizedBox(
                        width: 30,
                        child: Divider(
                          color: Color(0xff979797),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Image.asset(
                        ImageResultFlight.path,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const SizedBox(
                        width: 30,
                        child: Divider(
                          color: Color(0xff979797),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const TitleWidget(
                        title: 'SBY',
                        fontSizeTitle: 24,
                        fontWeightTitle: FontWeight.w500,
                        colorTitle: Colors.black,
                        distance: 5,
                        subTitle: 'Surabaya',
                        fontSizeSubTitle: 14,
                        fontWeightSubTitle: FontWeight.w400,
                        colorSubTitle: Color(0xff636363),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                          color: Color(0xffE5E5E5), shape: BoxShape.circle),
                    ),
                    const Expanded(
                      child: Divider(
                        color: Color(0xffE5E5E5),
                      ),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                          color: Color(0xffE5E5E5), shape: BoxShape.circle),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  width: 265.w,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(ImageResultFlight.nns24),
                          SizedBox(
                            width: 15.w,
                          ),
                          const TitleWidget(
                            title: 'Airline',
                            fontSizeTitle: 12,
                            fontWeightTitle: FontWeight.w400,
                            colorTitle: Color(0xff636363),
                            distance: 10,
                            subTitle: 'Air Asia',
                            fontSizeSubTitle: 14,
                            fontWeightSubTitle: FontWeight.w500,
                            colorSubTitle: Colors.black,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          const TitleWidget(
                            title: 'Passengers',
                            fontSizeTitle: 12,
                            fontWeightTitle: FontWeight.w400,
                            colorTitle: Color(0xff636363),
                            distance: 10,
                            subTitle: 'James Christin',
                            fontSizeSubTitle: 14,
                            fontWeightSubTitle: FontWeight.w500,
                            colorSubTitle: Colors.black,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        children: [
                          TitleWidget(
                            title: 'Date',
                            fontSizeTitle: 12,
                            fontWeightTitle: FontWeight.w400,
                            colorTitle: Color(0xff636363),
                            distance: 10,
                            subTitle: '24 Mar 2020',
                            fontSizeSubTitle: 14,
                            fontWeightSubTitle: FontWeight.w500,
                            colorSubTitle: Colors.black,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          TitleWidget(
                            title: 'Gate',
                            fontSizeTitle: 12,
                            fontWeightTitle: FontWeight.w400,
                            colorTitle: Color(0xff636363),
                            distance: 10,
                            subTitle: '24A',
                            fontSizeSubTitle: 14,
                            fontWeightSubTitle: FontWeight.w500,
                            colorSubTitle: Colors.black,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          TitleWidget(
                            title: 'Flight No.',
                            fontSizeTitle: 12,
                            fontWeightTitle: FontWeight.w400,
                            colorTitle: Color(0xff636363),
                            distance: 10,
                            subTitle: 'NNS24',
                            fontSizeSubTitle: 14,
                            fontWeightSubTitle: FontWeight.w500,
                            colorSubTitle: Colors.black,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        children: [
                          TitleWidget(
                            title: 'Boarding Time',
                            fontSizeTitle: 12,
                            fontWeightTitle: FontWeight.w400,
                            colorTitle: Color(0xff636363),
                            distance: 10,
                            subTitle: '02:39pm',
                            fontSizeSubTitle: 14,
                            fontWeightSubTitle: FontWeight.w500,
                            colorSubTitle: Colors.black,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          TitleWidget(
                            title: 'Seat',
                            fontSizeTitle: 12,
                            fontWeightTitle: FontWeight.w400,
                            colorTitle: Color(0xff636363),
                            distance: 10,
                            subTitle: '5A',
                            fontSizeSubTitle: 14,
                            fontWeightSubTitle: FontWeight.w500,
                            colorSubTitle: Colors.black,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          TitleWidget(
                            title: 'Class',
                            fontSizeTitle: 12,
                            fontWeightTitle: FontWeight.w400,
                            colorTitle: Color(0xff636363),
                            distance: 10,
                            subTitle: 'Economy',
                            fontSizeSubTitle: 14,
                            fontWeightSubTitle: FontWeight.w500,
                            colorSubTitle: Colors.black,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 34,
                ),
                Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                          color: Color(0xffE5E5E5), shape: BoxShape.circle),
                    ),
                    const Expanded(
                      child: Divider(
                        color: Color(0xffE5E5E5),
                      ),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                          color: Color(0xffE5E5E5), shape: BoxShape.circle),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    top: 25,
                    bottom: 26,
                    left: 20,
                    right: 21,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          TextWidget(
                            text: '\$215',
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                          TextWidget(
                            text: '/passenger',
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      TextWidget(
                        text: '1 passenger',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
            width: 411.w,
            height: height * 0.78,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: addCardList.length,
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemBuilder: (context, index) {
                return Container(
                  width: 325,
                  padding:
                      const EdgeInsets.symmetric(vertical: 19, horizontal: 20),
                  decoration: BoxDecoration(
                      color: AppColos.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(addCardList[index]['image']),
                          const SizedBox(
                            width: 15,
                          ),
                          TextWidget(
                            text: addCardList[index]['title'],
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      if (isFlight = addCardList[index]['isFlight']) ...[
                        Container(
                          width: 295.w,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  width: 1, color: const Color(0xfff77777))),
                          child: Row(
                            children: [
                              Image.asset(ImageCheckkoutFlight.jamesChristin),
                              const SizedBox(
                                width: 15,
                              ),
                              const TextWidget(
                                text: 'James Christin',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                width: 29,
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.pushNamed(RoutesName.selectSeat);
                                },
                                child: Container(
                                  width: 100,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffE0DDF5),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: const Center(
                                    child: TextWidget(
                                      text: 'Select Seat',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: AppColos.linear,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                      GestureDetector(
                        onTap: addCardList[index]['onTap'],
                        child: Container(
                          width: 200,
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: const Color(0xffE0DDF5),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor: AppColos.white,
                                maxRadius: 20,
                                child: Icon(
                                  Icons.add,
                                  size: 21,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              TextWidget(
                                text: addCardList[index]['subTitle'],
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColos.linear,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
