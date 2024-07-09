import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/app_routers/routes_name.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/button/buttons.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';
import 'package:travo_apps_1/view/dtomic/title_widget/title_widget.dart';

import '../../../core/constants/assets.dart';
import '../../dtomic/image_card/image_card_one.dart';

class AddPassengers extends StatefulWidget {
  const AddPassengers({super.key});

  @override
  State<AddPassengers> createState() => _AddPassengersState();
}

class _AddPassengersState extends State<AddPassengers> {
  List<Map<String, dynamic>> cartGuestAndRoom = [
    {
      'image': ImageAddPassengers.adult,
      'text': 'Adult',
      'title': 'Age 12+',
      'top': 0,
    },
    {
      'image': ImageAddPassengers.child,
      'text': 'Child',
      'title': 'Age 2-11',
      'top': 0,
    },
    {
      'image': ImageAddPassengers.infant,
      'text': 'Infant',
      'title': 'Age 0-2',
      'top': 0,
    },
  ];
  int top = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageCardOne(
              onTapIcon: () {
                Navigator.pop(context);
              },
              fontSizeTitle: 30.sp,
              fontWeightTitle: FontWeight.w500,
              title: 'Add ',
              distance: 0,
              subTitle: 'passengers',
              fontSizeSubTitle: 30.sp,
              fontWeightSubTitle: FontWeight.w500,
            ),
            Padding(
              padding: REdgeInsets.only(
                top: 20,
                right: 25,
                left: 25,
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 411.w,
                    height: MediaQuery.sizeOf(context).height * .50.h,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Container(
                          width: 411.w,
                          padding: REdgeInsets.symmetric(
                              horizontal: 20, vertical: 19),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(cartGuestAndRoom[index]['image']),
                              TitleWidget(
                                title: cartGuestAndRoom[index]['text'],
                                fontSizeTitle: 16.sp,
                                fontWeightTitle: FontWeight.w400,
                                colorTitle: Colors.black,
                                distance: 5.h,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                subTitle: cartGuestAndRoom[index]['title'],
                                fontSizeSubTitle: 12.h,
                                fontWeightSubTitle: FontWeight.w400,
                                colorSubTitle: const Color(0xff636363),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              InkWell(
                                borderRadius: BorderRadius.circular(16.r),
                                onTap: () {
                                  setState(() {
                                    cartGuestAndRoom[index]['top']--;
                                    if (cartGuestAndRoom[index]['top'] >= 0) {}
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: const Color(0xff3EC8BC),
                                  radius: 16.r,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 20.sp,
                                  ),
                                ),
                              ),
                              TextWidget(
                                text: cartGuestAndRoom[index]['top'].toString(),
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              InkWell(
                                borderRadius: BorderRadius.circular(16.r),
                                onTap: () {
                                  setState(() {
                                    cartGuestAndRoom[index]['top']++;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: const Color(0xff3EC8BC),
                                  radius: 16.r,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        height: 20.h,
                      ),
                      itemCount: cartGuestAndRoom.length,
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: REdgeInsets.only(
          bottom: 50,
          left: 25,
          right: 25,
        ),
        child: Buttons(
          onPressed: () {
            context.goNamed(RoutesName.home);
          },
          isText: true,
          borderColor: AppColos.linear,
          borderRadius: 30.r,
          fontWeightText: FontWeight.bold,
          fontSizeText: 20.sp,
          width: 411.w,
          text: 'Done',
        ),
      ),
    );
  }
}
