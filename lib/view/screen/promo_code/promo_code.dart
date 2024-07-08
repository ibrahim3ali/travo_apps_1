import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

import '../../../core/app_routers/routes_name.dart';
import '../../../core/constants/app_colos.dart';
import '../../dtomic/button/buttons.dart';
import '../../dtomic/image_card/image_card_one.dart';

class PromoCode extends StatefulWidget {
  const PromoCode({super.key});

  @override
  State<PromoCode> createState() => _PromoCodeState();
}

class _PromoCodeState extends State<PromoCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImageCardOne(
            onTapIcon: () {
              context.pop();
            },
            fontSizeTitle: 30.sp,
            fontWeightTitle: FontWeight.bold,
            textLeft: 68,
            textBottom: 62,
            textTop: 58,
            textRight: 69,
            title: 'Promo Code',
            distance: 0,
          ),
          Padding(
            padding: REdgeInsets.symmetric(
              vertical: 20,
              horizontal: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 411.w,
                  height: 50.h,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: AppColos.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 15,
                          top: 11,
                          bottom: 12,
                        ),
                        child: TextWidget(
                          text: 'Coupon Code',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff636363),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.pushNamed(RoutesName.addCard);
                        },
                        child: Container(
                          width: 100.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: const Color(0xffE0DDF5),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: TextWidget(
                              text: 'Add Code',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColos.linear,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 259,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: REdgeInsets.only(
          bottom: 50,
          left: 25,
          right: 25,
        ),
        child: Buttons(
          onPressed: () {
            context.pop();
          },
          width: 411.w,
          borderColor: AppColos.linear,
          borderRadius: 30,
          isText: true,
          text: 'Done',
          fontSizeText: 20,
          fontWeightText: FontWeight.bold,
          colorText: AppColos.white,
        ),
      ),
    );
  }
}
