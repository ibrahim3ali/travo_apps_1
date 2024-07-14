import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/button/buttons.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

import '../../../core/constants/assets.dart';
import '../../dtomic/image_card/image_card_app_bar_one.dart';

class GuestAndRoom extends StatefulWidget {
  const GuestAndRoom({super.key});

  @override
  State<GuestAndRoom> createState() => _GuestAndRoomState();
}

class _GuestAndRoomState extends State<GuestAndRoom> {
  List<Map<String, dynamic>> cartGuestAndRoom = [
    {
      'image': ImageGuestAndRoom.guest,
      'text': 'Guest',
      'top': 0,
    },
    {
      'image': ImageGuestAndRoom.room,
      'text': 'Room',
      'top': 0,
    },
  ];
  int top = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImageCardAppBarOne(
            onTapIcon: () {
              context.pop();
            },
            fontWeightTitle: FontWeight.w500,
            title: 'Add ',
            distance: 0,
            subTitle: 'guest and room ',
            fontSizeSubTitle: 30,
            fontWeightSubTitle: FontWeight.w500,
          ),
          Padding(
            padding: REdgeInsets.only(
              right: 25,
              left: 25,
              top: 20,
            ),
            child: Column(
              children: [
                SizedBox(
                  width: 411.w,
                  height: 220.h,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Container(
                        width: 411,
                        height: 70,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 19),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(cartGuestAndRoom[index]['image']),
                            TextWidget(
                              text: cartGuestAndRoom[index]['text'],
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              borderRadius: BorderRadius.circular(16),
                              onTap: () {
                                setState(() {
                                  if (cartGuestAndRoom[index]['top'] > 0) {
                                    cartGuestAndRoom[index]['top']--;
                                  }
                                });
                              },
                              child: const CircleAvatar(
                                backgroundColor: Color(0xff3EC8BC),
                                radius: 16,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                            TextWidget(
                              text: cartGuestAndRoom[index]['top'].toString(),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                            InkWell(
                              borderRadius: BorderRadius.circular(16),
                              onTap: () {
                                setState(() {
                                  cartGuestAndRoom[index]['top']++;
                                });
                              },
                              child: const CircleAvatar(
                                backgroundColor: Color(0xff3EC8BC),
                                radius: 16,
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                    ),
                    itemCount: 2,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: REdgeInsets.only(
          bottom: 50,
          right: 25,
          left: 25,
        ),
        child: Buttons(
          onPressed: () {
            context.pop();
          },
          isText: true,
          borderColor: AppColos.linear,
          borderRadius: 30.r,
          fontWeightText: FontWeight.w500,
          fontSizeText: 18,
          width: 411.w,
          text: 'Done',
        ),
      ),
    );
  }
}
