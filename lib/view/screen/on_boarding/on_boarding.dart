import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/app_routers/routes_name.dart';

import '../../../core/constants/assets.dart';
import '../../dtomic/button/buttons.dart';
import '../../dtomic/dotlndicator/dotlndicator.dart';
import '../../dtomic/title_widget/title_widget.dart';
import '../../widget/on_boarding_widget/image_page_view_widget/image_page_view_widget.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _index = 0;
  final int _maxIdex = 3;
  void _incrementIndex() {
    if (_index < _maxIdex) {
      setState(() {
        _index++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> image = [
      {
        'image': ImageOnBoarding.onboarding1,
        'width': 300.0.w,
        'padding': REdgeInsets.only(left: 75),
        'title': 'Book a flight',
        'subTitle':
            'Found a flight that matches your destination and schedule? Book it instantly.',
        'buttonText': 'Next',
        'isCart': true,
        'onPressed': () {
          _incrementIndex();
        },
      },
      {
        'image': ImageOnBoarding.onboarding2,
        'width': 375.0.w,
        'padding': EdgeInsets.zero,
        'title': 'Find a hotel room',
        'subTitle':
            'Select the day, book your room. We give you the best price.',
        'buttonText': 'Next',
        'isCart': true,
        'onPressed': () {
          _incrementIndex();
        },
      },
      {
        'image': ImageOnBoarding.onboarding3,
        'width': 300.0.w,
        'padding': REdgeInsets.only(right: 75),
        'title': 'Enjoy your trip',
        'subTitle':
            'Easy discovering new places and share these between your friends and travel together.',
        'buttonText': 'Get Started',
        'onPressed': () {
          context.goNamed(RoutesName.login);
        },
      },
    ];
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        width: 411.w,
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImagePageViewWidget(image: image, index: _index),
                  Padding(
                    padding: REdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50.h,
                        ),
                        TitleWidget(
                          title: image[_index]['title'],
                          subTitle: image[_index]['subTitle'],
                          colorTitle: Colors.black,
                          fontSizeTitle: 24,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          fontWeightTitle: FontWeight.bold,
                          distance: 25,
                          colorSubTitle: Colors.black,
                          fontSizeSubTitle: 14,
                          fontWeightSubTitle: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: REdgeInsets.only(
          left: 25,
          right: 25,
          bottom: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Dotlndicator(image: image, index: _index),
            Buttons(
              isText: true,
              text: image[_index]['buttonText'],
              onPressed: image[_index]['onPressed'],
              fontSizeText: 14,
              fontWeightText: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
