import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/app_routers/routes_name.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';
import 'package:travo_apps_1/view/dtomic/title_widget/title_widget.dart';

import '../../../core/constants/assets.dart';
import '../../dtomic/button/buttons.dart';
import '../../dtomic/image_card/image_card_one.dart';

class SelectSeat extends StatefulWidget {
  const SelectSeat({super.key});

  @override
  State<SelectSeat> createState() => _SelectSeatState();
}

class _SelectSeatState extends State<SelectSeat> {
  List<Map<String, dynamic>> cartListSeat = [
    {
      'book1_1': [
        {
          'book1_2': 'A',
        },
      ],
    },
    {
      'book1_1': [
        {
          'book1_2': 'D',
        },
      ],
    },
    {
      'book1_1': [
        {
          'book1_2': '1',
        },
      ],
    },
    {
      'book1_1': [
        {
          'book1_2': 'C',
        },
      ],
    },
    {
      'book1_1': [
        {
          'book1_2': 'D',
        },
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageCardOne(
              onTapIcon: () {
                context.pop();
              },
              isTitle: true,
              title: 'Select Seat',
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 25.w,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 35.h,
                        ),
                        Container(
                          width: 110.w,
                          padding: REdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: AppColos.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(ImageSelectSeat.seat),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  TitleWidget(
                                    title: 'Seat',
                                    fontSizeTitle: 12.sp,
                                    fontWeightTitle: FontWeight.w400,
                                    colorTitle: const Color(0xff636363),
                                    distance: 10.h,
                                    subTitle: '5A',
                                    fontSizeSubTitle: 24.sp,
                                    fontWeightSubTitle: FontWeight.w500,
                                    colorSubTitle: AppColos.linear,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              TextWidget(
                                text: 'Economy Class',
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w800,
                                color: Colors.black,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Container(
                                width: 85.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                    color: const Color(0xffE0DDF5),
                                    borderRadius: BorderRadius.circular(15.r)),
                                child: Center(
                                  child: TextWidget(
                                    text: '\$215',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w800,
                                    color: AppColos.linear,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        SizedBox(
                          width: 60.w,
                          height: 140.h,
                          child: Column(
                            children: [
                              TextWidget(
                                text: 'SBY',
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w800,
                                color: AppColos.linear,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Image.asset(ImageSelectSeat.sbyJkt),
                              SizedBox(
                                height: 20.h,
                              ),
                              TextWidget(
                                text: 'JKT',
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w800,
                                color: AppColos.linear,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      width: 230.w,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: AppColos.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          TextWidget(
                            text: 'Bussiness Class',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Row(
                            children: [
                              CartListSeatWidget(
                                isBook: false,
                                text: 'A',
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              CartListSeatWidget(
                                isBook: false,
                                text: 'B',
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              TextWidget(
                                text: '1',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              CartListSeatWidget(
                                isBook: false,
                                text: 'C',
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              CartListSeatWidget(
                                isBook: false,
                                text: 'D',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Row(
                            children: [
                              CartListSeatWidget(
                                isBook: false,
                                text: 'A',
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              CartListSeatWidget(
                                isBook: true,
                                text: 'C',
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              TextWidget(
                                text: '2',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              CartListSeatWidget(
                                isBook: false,
                                text: 'C',
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              CartListSeatWidget(
                                isBook: true,
                                text: 'D',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Row(
                            children: [
                              CartListSeatWidget(
                                isBook: true,
                                text: 'A',
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              CartListSeatWidget(
                                isBook: false,
                                text: 'B',
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              TextWidget(
                                text: '3',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              CartListSeatWidget(
                                isBook: true,
                                text: 'C',
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              CartListSeatWidget(
                                isBook: false,
                                text: 'D',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextWidget(
                            text: 'Economy Class',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const CartListSeatWidget(
                                isBook: false,
                                text: 'A',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: false,
                                text: 'B',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: true,
                                text: 'C',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const TextWidget(
                                text: '1',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: true,
                                text: 'D',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: false,
                                text: 'E',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: false,
                                text: 'F',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const CartListSeatWidget(
                                isBook: true,
                                text: 'A',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: true,
                                text: 'B',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: true,
                                text: 'C',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const TextWidget(
                                text: '2',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: false,
                                text: 'D',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: false,
                                text: 'E',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: false,
                                text: 'F',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const CartListSeatWidget(
                                isBook: false,
                                text: 'A',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: false,
                                text: 'B',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: false,
                                text: 'C',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const TextWidget(
                                text: '3',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: true,
                                text: 'D',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: true,
                                text: 'E',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: true,
                                text: 'F',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const CartListSeatWidget(
                                isBook: true,
                                text: 'A',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: true,
                                text: 'B',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: true,
                                text: 'C',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const TextWidget(
                                text: '4',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: true,
                                text: 'D',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: false,
                                text: 'E',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: false,
                                text: 'F',
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const CartListSeatWidget(
                                isBook: true,
                                text: 'A',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: false,
                                text: 'B',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: true,
                                text: 'C',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const TextWidget(
                                text: '5',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: true,
                                text: 'D',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: true,
                                text: 'E',
                              ),
                              SizedBox(
                                width: 4.5.w,
                              ),
                              const CartListSeatWidget(
                                isBook: true,
                                text: 'F',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: REdgeInsets.only(bottom: 50, right: 25, left: 25),
        child: Buttons(
          onPressed: () {
            context.pushNamed(RoutesName.checkkoutFlight);
          },
          width: 325,
          borderColor: AppColos.linear,
          borderRadius: 30,
          isText: true,
          text: 'Processed',
          fontSizeText: 16,
          fontWeightText: FontWeight.w500,
          colorText: AppColos.white,
        ),
      ),
    );
  }
}

class CartListSeatWidget extends StatelessWidget {
  const CartListSeatWidget({
    super.key,
    required this.text,
    required this.isBook,
  });

  final String text;
  final bool isBook;
  @override
  Widget build(BuildContext context) {
    return isBook
        ? Container(
            width: 30,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffE0DDF5),
            ),
          )
        : Container(
            width: 30,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(width: 2, color: const Color(0xffE0DDF5)),
            ),
            child: Center(
              child: TextWidget(
                text: text,
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          );
  }
}
