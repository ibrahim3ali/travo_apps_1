import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/image_card/image_card_three.dart';

import '../../../core/app_routers/routes_name.dart';
import '../../dtomic/button/buttons.dart';
import '../../widget/booking_hotel_widget/container_bool_widget/container_bool_widget.dart';
import '../../widget/checkkout_flight_widget/checkkout_flight1_widget/checkkout_flight1_widget.dart';
import '../../widget/checkkout_flight_widget/checkkout_flight3_widget/checkkout_flight3_widget.dart';

class CheckkoutFlight extends StatefulWidget {
  const CheckkoutFlight({super.key});

  @override
  State<CheckkoutFlight> createState() => _CheckkoutFlightState();
}

class _CheckkoutFlightState extends State<CheckkoutFlight> {
  int _index = 0;
  final int _maxIdex = 2;
  void _incrementIndex() {
    if (_index < _maxIdex) {
      setState(() {
        _index++;
      });
    }
  }

  List<bool> isActive = [true, false, false];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    List<Map<String, dynamic>> cardScreen = [
      {
        'isActive': true,
        'number': '1',
        'height': height,
        'title': 'Book and Review',
        'screen': const CheckkoutFlight1Widget(),
        'button': 'Payment',
        'onPressed': () {
          _incrementIndex();
        },
      },
      {
        'isActive': false,
        'number': '2',
        'height': height,
        'title': 'Payment',
        'screen': const CheckkoutFlight1Widget(),
        'button': 'Payment',
        'onPressed': () {
          _incrementIndex();
        },
      },
      {
        'isActive': true,
        'number': '3',
        'title': 'Confirm',
        'height': height,
        'screen': const CheckkoutFlight3Widget(),
        'button': 'Pay Now',
        'onPressed': () {
          context.goNamed(RoutesName.home);
        },
      },
    ];

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
                top: 190.h,
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
