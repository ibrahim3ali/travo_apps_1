import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';
import 'package:travo_apps_1/view/dtomic/title_widget/title_widget.dart';

import '../../../core/app_routers/routes_name.dart';
import '../../../core/constants/assets.dart';
import '../../dtomic/button/buttons.dart';
import '../../dtomic/image_card/image_card_three.dart';

class SelectRoom extends StatefulWidget {
  const SelectRoom({super.key});

  @override
  State<SelectRoom> createState() => _SelectRoomState();
}

class _SelectRoomState extends State<SelectRoom> {
  final List<Map<String, dynamic>> productDetailsCard = [
    {
      'text': 'Deluxe Room',
      'title': 'Room Size : 27 m2',
      'subTitle': 'Free Cancellation',
      'image': ImageSelectRoom.deluxeRoom,
      'number': '\$245',
    },
    {
      'text': 'Executive Suite',
      'title': 'Room Size : 32 m2',
      'subTitle': 'Non-refundable',
      'image': ImageSelectRoom.executiveSuite,
      'number': '\$289',
    },
    {
      'text': 'King Bed Only Room',
      'title': 'Room Size : 24 m2',
      'subTitle': 'Non-refundable',
      'image': ImageSelectRoom.kingBedOnlyRoom,
      'number': '\$214',
    },
  ];
  final List<Map<String, dynamic>> productDetailsCardIcon = [
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
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: height,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ImageCardThree(
                isColumn: false,
                isIconTwo: false,
                onTapIcon: () {
                  context.pop();
                },
                title: 'Select Room',
                fontSizeTitle: 30.sp,
                fontWeightTitle: FontWeight.bold,
                topTitle: 58.h,
                rightTitle: 85.w,
                lsftTitle: 100.w,
              ),
              Positioned.fill(
                top: 110.h,
                right: 25,
                left: 25,
                child: SizedBox(
                  width: 411.w,
                  height: height.h,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
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
                                      text: productDetailsCard[index]['text'],
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    TitleWidget(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      title: productDetailsCard[index]['title'],
                                      fontSizeTitle: 16,
                                      fontWeightTitle: FontWeight.w400,
                                      colorTitle: Colors.black,
                                      distance: 10.h,
                                      subTitle: productDetailsCard[index]
                                          ['subTitle'],
                                      fontSizeSubTitle: 14,
                                      fontWeightSubTitle: FontWeight.w400,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    width: 70.w,
                                    height: 70.w,
                                    child: Image.asset(
                                        fit: BoxFit.fill,
                                        productDetailsCard[index]['image'])),
                              ],
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            SizedBox(
                              width: 411.w,
                              height: 90.h,
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
                                            fit: BoxFit.contain,
                                            productDetailsCardIcon[index]
                                                ['imageIcon']),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Center(
                                        child: TitleWidget(
                                          title: productDetailsCardIcon[index]
                                              ['titleIcon'],
                                          fontSizeTitle: 10.sp,
                                          fontWeightTitle: FontWeight.w400,
                                          colorTitle: Colors.black,
                                          subTitle:
                                              productDetailsCardIcon[index]
                                                  ['subTitle'],
                                          fontSizeSubTitle: 10.sp,
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
                                TitleWidget(
                                  title: productDetailsCard[index]['number'],
                                  fontSizeTitle: 24,
                                  fontWeightTitle: FontWeight.w800,
                                  distance: 10,
                                  colorTitle: const Color(0xff313131),
                                  subTitle: '/night',
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  fontSizeSubTitle: 13,
                                  fontWeightSubTitle: FontWeight.w400,
                                  colorSubTitle: const Color(0xff313131),
                                ),
                                Buttons(
                                  width: 150,
                                  height: 60,
                                  borderColor: AppColos.linear,
                                  borderRadius: 30,
                                  colorText: AppColos.white,
                                  onPressed: () {
                                    context
                                        .pushNamed(RoutesName.checkkoutHotel);
                                  },
                                  text: 'Choose',
                                  isText: true,
                                  fontSizeText: 18,
                                  fontWeightText: FontWeight.bold,
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                    ),
                    itemCount: productDetailsCard.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductDetailsWidget extends StatelessWidget {
  const ProductDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
