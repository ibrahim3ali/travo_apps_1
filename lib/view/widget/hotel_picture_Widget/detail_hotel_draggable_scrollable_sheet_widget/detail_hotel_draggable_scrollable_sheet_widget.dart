import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';
import 'package:travo_apps_1/view/dtomic/title_widget/title_widget.dart';

import '../../../../core/app_routers/routes_name.dart';
import '../../../../core/constants/app_colos.dart';
import '../../../../core/constants/assets.dart';
import '../../../dtomic/button/buttons.dart';
import '../card_icon_widget/card_icon_widget.dart';

class DetailHotelDraggableScrollableSheetWidget extends StatefulWidget {
  const DetailHotelDraggableScrollableSheetWidget({super.key});

  @override
  State<DetailHotelDraggableScrollableSheetWidget> createState() =>
      _DetailHotelDraggableScrollableSheetWidgetState();
}

class _DetailHotelDraggableScrollableSheetWidgetState
    extends State<DetailHotelDraggableScrollableSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 751.h,
      padding: REdgeInsets.only(left: 25, right: 25, top: 20),
      decoration: const BoxDecoration(
        color: Color(0xffF0F2F6),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Center(
            child: Container(
              width: 75,
              height: 5,
              decoration: BoxDecoration(
                  color: const Color(0xff2D3142),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextWidget(
                        text: 'Grand Luxury’s',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '\$245',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                            ),
                            TextSpan(
                              text: '/night',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        color: Color(0xffF77777),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      TextWidget(
                        text: 'Seoul, South Korea',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    color: Color(0xffE5E5E5),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color(0xffFFC107),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '4.2/5 ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                ),
                                TextSpan(
                                  text: '(2456 reviews)',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleSmall
                                      ?.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff838383),
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          context.pushNamed(RoutesName.reviewHotel);
                          context.pop();
                        },
                        child: const TextWidget(
                          text: 'See All',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6155CC),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Divider(
                    color: Color(0xffE5E5E5),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  const TitleWidget(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    title: 'Information',
                    colorTitle: Colors.black,
                    fontSizeTitle: 16,
                    fontWeightTitle: FontWeight.w500,
                    subTitle:
                        'You will find every comfort because many of the services that the hotel offers for travellers and of course the hotel is very comfortable.',
                    fontSizeSubTitle: 14,
                    fontWeightSubTitle: FontWeight.w400,
                    colorSubTitle: Colors.black,
                    distance: 15,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CardIconWidget(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: TitleWidget(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      title: 'Location',
                      colorTitle: Colors.black,
                      fontSizeTitle: 16,
                      fontWeightTitle: FontWeight.w500,
                      subTitle:
                          'Located in the famous neighborhood of Seoul, Grand Luxury’s is set in a building built in the 2010s.',
                      fontSizeSubTitle: 14,
                      fontWeightSubTitle: FontWeight.w400,
                      colorSubTitle: Colors.black,
                      distance: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 411.w,
                    child: Image.asset(
                      ImageHotelPicture.mapIcon,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          Buttons(
            text: 'Select Room',
            isText: true,
            borderColor: AppColos.linear,
            colorText: AppColos.white,
            fontSizeText: 16,
            fontWeightText: FontWeight.w500,
            borderRadius: 50.r,
            height: 50.h,
            width: 411.w,
            onPressed: () {
              context.pushNamed(RoutesName.selectRoom);
              context.pop();
            },
          ),
          const SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
