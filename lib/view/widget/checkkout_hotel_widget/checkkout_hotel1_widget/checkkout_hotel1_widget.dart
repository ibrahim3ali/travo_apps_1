import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app_routers/routes_name.dart';
import '../../../../core/constants/app_colos.dart';
import '../../../../core/constants/assets.dart';
import '../../../dtomic/text_widget/text_widget.dart';
import '../../../dtomic/title_widget/title_widget.dart';

class CheckkoutHotel1Widget extends StatefulWidget {
  const CheckkoutHotel1Widget({
    super.key,
    // required this.productDetailsCardIcon,
    // required this.addCard,
  });

  // final List<Map<String, dynamic>> productDetailsCardIcon;
  // final List<Map<String, dynamic>> addCard;

  @override
  State<CheckkoutHotel1Widget> createState() => _CheckkoutHotel1WidgetState();
}

class _CheckkoutHotel1WidgetState extends State<CheckkoutHotel1Widget> {
  List<Map<String, dynamic>> productDetailsCardIcon = [
    {
      'imageIcon': ImageSelectRoom.freeWiFi,
      'titleIcon': 'Free ',
      'subTitle': 'WiFi',
    },
    {
      'imageIcon': ImageSelectRoom.nonRefundable,
      'titleIcon': 'Non-',
      'subTitle': 'Refundable',
    },
    {
      'imageIcon': ImageSelectRoom.freeBreakfast,
      'titleIcon': 'Free ',
      'subTitle': 'Breakfast',
    },
    {
      'imageIcon': ImageSelectRoom.nonSmoking,
      'titleIcon': 'Non-',
      'subTitle': 'Smoking',
    },
  ];
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> addCard = [
      {
        'imageIcon': ImageCheckkoutHotel.contactDetails,
        'title': 'Contact Details',
        'subTitle': 'Add Contact',
        'onTap': () {
          context.pushNamed(RoutesName.contactDetails);
        },
      },
      {
        'imageIcon': ImageCheckkoutHotel.promoCode,
        'title': 'Promo Code',
        'subTitle': 'Add Promo Code',
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
            padding: REdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColos.white,
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: 'Deluxe Room',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TitleWidget(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          title: 'Room Size : 27 m2',
                          fontSizeTitle: 16,
                          fontWeightTitle: FontWeight.w400,
                          colorTitle: Colors.black,
                          distance: 10.h,
                          subTitle: 'Free Cancellation',
                          fontSizeSubTitle: 14,
                          fontWeightSubTitle: FontWeight.w400,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 70.w,
                      height: 70.w,
                      child: Image.asset(
                          fit: BoxFit.fill, ImageSelectRoom.deluxeRoom),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  width: 411.w,
                  height: 86.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 45.w,
                    ),
                    itemCount: productDetailsCardIcon.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(
                            width: 40.w,
                            height: 40.w,
                            child: Image.asset(
                                productDetailsCardIcon[index]['imageIcon']),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Center(
                            child: TitleWidget(
                              title: productDetailsCardIcon[index]['titleIcon'],
                              fontSizeTitle: 10,
                              fontWeightTitle: FontWeight.w400,
                              colorTitle: Colors.black,
                              subTitle: productDetailsCardIcon[index]
                                  ['subTitle'],
                              fontSizeSubTitle: 10,
                              fontWeightSubTitle: FontWeight.w400,
                              colorSubTitle: Colors.black,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                const Divider(
                  color: Color(0xffE5E5E5),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: '\$245',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black,
                                  ),
                        ),
                        TextSpan(
                          text: '/night',
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                        ),
                      ]),
                    ),
                    const TextWidget(
                      text: '1 room',
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(
            width: 411.w,
            height: height * 0.55.h,
            child: ListView.separated(
              itemCount: addCard.length,
              separatorBuilder: (context, index) => const SizedBox(
                height: 30,
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  width: 411.w,
                  // height: 125.h,
                  padding: REdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 19,
                  ),
                  decoration: BoxDecoration(
                    color: AppColos.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(addCard[index]['imageIcon']),
                          const SizedBox(
                            width: 15,
                          ),
                          TextWidget(
                            text: addCard[index]['title'],
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: addCard[index]['onTap'],
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          width: 200,
                          height: 50,
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 4,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xffe0ddf5),
                          ),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 20,
                                backgroundColor: AppColos.white,
                                child: Icon(
                                  Icons.add,
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              TextWidget(
                                text: addCard[index]['subTitle'],
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: AppColos.linear,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          // const SizedBox(
          //   height: 30,
          // ),
          // Buttons(
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          //   text: 'Payment',
          //   isText: true,
          //   fontSizeText: 16,
          //   fontWeightText: FontWeight.w500,
          //   borderColor: AppColos.linear,
          //   colorText: AppColos.white,
          //   borderRadius: 50,
          //   height: 50,
          //   width: 325,
          // ),
          // const SizedBox(
          //   height: 12,
          // ),
        ],
      ),
    );
  }
}
