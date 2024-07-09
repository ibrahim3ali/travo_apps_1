import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/app_routers/routes_name.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/core/constants/assets.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';
import 'package:travo_apps_1/view/dtomic/title_widget/title_widget.dart';

class CheckkoutFlight3Widget extends StatelessWidget {
  const CheckkoutFlight3Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                          const SizedBox(
                            width: 15,
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
                          const SizedBox(
                            width: 25,
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
                Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                    bottom: 16,
                    left: 20,
                    right: 21,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 85,
                        width: 255,
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) =>
                              Image.asset(ImageCheckkoutFlight.bitmapCopy),
                          itemCount: 3,
                        ),
                      ),
                      const TextWidget(
                        text: '1234 5678 90AS 6543 21CV',
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 411.w,
            padding: const EdgeInsets.only(
              top: 17,
              bottom: 13,
              left: 20,
              right: 20,
            ),
            decoration: BoxDecoration(
              color: AppColos.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text: '1 Passenger',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    TextWidget(
                      text: '\$215',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text: 'Insurance',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                    TextWidget(
                      text: '-',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(
                  height: 14.5,
                ),
                Divider(
                  color: Color(0xffe5e5e5),
                ),
                SizedBox(
                  height: 14.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text: 'Total',
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                    TextWidget(
                      text: '\$215',
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 411.w,
            padding: const EdgeInsets.only(
              top: 17,
              bottom: 13,
              left: 20,
              right: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColos.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(ImageCheckkoutHotel.masterCard),
                    const SizedBox(
                      width: 15,
                    ),
                    const TitleWidget(
                      title: 'Credit / Debit Card',
                      fontSizeTitle: 12,
                      fontWeightTitle: FontWeight.w400,
                      colorTitle: Color(0xff636363),
                      distance: 6,
                      subTitle: 'Master Card',
                      fontSizeSubTitle: 14,
                      fontWeightSubTitle: FontWeight.w500,
                      colorSubTitle: Colors.black,
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    context.pushNamed(RoutesName.addCard);
                  },
                  child: const TextWidget(
                    text: 'Change',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColos.linear,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
