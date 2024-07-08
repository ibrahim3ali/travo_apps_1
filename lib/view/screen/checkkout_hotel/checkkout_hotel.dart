import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/image_card/image_card_three.dart';

import '../../../core/app_routers/routes_name.dart';
import '../../dtomic/button/buttons.dart';
import '../../widget/booking_hotel_widget/container_bool_widget/container_bool_widget.dart';
import '../../widget/checkkout_hotel_widget/checkkout_hotel1_widget/checkkout_hotel1_widget.dart';
import '../../widget/checkkout_hotel_widget/checkkout_hotel2_widget/checkkout_hotel2_widget.dart';
import '../../widget/checkkout_hotel_widget/checkkout_hotel3_widget/checkkout_hotel3_widget.dart';

class CheckkoutHotel extends StatefulWidget {
  const CheckkoutHotel({super.key});

  @override
  State<CheckkoutHotel> createState() => _CheckkoutHotelState();
}

class _CheckkoutHotelState extends State<CheckkoutHotel> {
  int _index = 0;
  final int _maxIdex = 2;
  void _incrementIndex() {
    if (_index < _maxIdex) {
      setState(() {
        _index++;
      });
    }
  }

  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> cardScreen = [
      {
        'isActive': false,
        'number': '1',
        'height': 700.0,
        'title': 'Book and Review',
        'screen': const CheckkoutHotel1Widget(),
        'button': 'Payment',
        'onPressed': () {
          _incrementIndex();
        },
      },
      {
        'isActive': true,
        'number': '2',
        'height': 450.0,
        'title': 'Payment',
        'screen': const CheckkoutHotel2Widget(),
        'button': 'Done',
        'onPressed': () {
          _incrementIndex();
        },
      },
      {
        'isActive': true,
        'number': '3',
        'title': 'Confirm',
        'height': 530.0,
        'screen': const CheckkoutHotel3Widget(),
        'button': 'Pay Now',
        'onPressed': () {
          context.pushNamed(RoutesName.bookingFlight);
        },
      },
    ];

    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SizedBox(
        height: height,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ImageCardThree(
              isColumn: false,
              onTapIcon: () {
                context.pop();
              },
              topTitle: 58.h,
              rightTitle: 100,
              lsftTitle: 130,
              isIconTwo: false,
              title: 'Checkout',
              fontSizeTitle: 30.sp,
              fontWeightTitle: FontWeight.bold,
              colorTitle: AppColos.white,
            ),
            Positioned(
              left: 25,
              right: 25,
              top: 144,
              child: SizedBox(
                width: 411.w,
                height: 24.h,
                child: Row(
                  children: List.generate(
                    cardScreen.length,
                    (index) {
                      return Row(
                        children: [
                          ContainerBoolWidget(
                            title: cardScreen[index]['title'],
                            number: cardScreen[index]['number'],
                            isActive: index == _index,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          if (index < (cardScreen.length - 1))
                            const SizedBox(
                              width: 16,
                              height: 1,
                              child: Divider(
                                color: AppColos.white,
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              child: Positioned.fill(
                top: 170.h,
                right: 25.w,
                left: 25.w,
                child: SingleChildScrollView(
                  child: SizedBox(
                    width: 411.w,
                    height: cardScreen[_index]['height'],
                    child: PageView(
                      children: [
                        cardScreen[_index]['screen'],
                      ],
                      onPageChanged: (pageIndex) {
                        setState(() {
                          pageIndex == _index;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: REdgeInsets.only(top: 10, bottom: 15, left: 25, right: 25),
        child: Buttons(
          onPressed: cardScreen[_index]['onPressed'],
          text: cardScreen[_index]['button'],
          isText: true,
          fontSizeText: 20.sp,
          fontWeightText: FontWeight.bold,
          borderColor: AppColos.linear,
          colorText: AppColos.white,
          borderRadius: 50,
          height: 50.h,
          width: 411.w,
        ),
      ),
    );
  }
}
