import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';
import 'package:travo_apps_1/view/dtomic/title_widget/title_widget.dart';

import '../../../../core/constants/assets.dart';
import '../../dtomic/image_card/image_card_three.dart';
import '../../widget/review_hotel_widget/filter_review_draggable_scrollable_sheet_widget.dart';

class ReviewHotel extends StatefulWidget {
  const ReviewHotel({super.key});

  @override
  State<ReviewHotel> createState() => _ReviewHotelState();
}

class _ReviewHotelState extends State<ReviewHotel> {
  final List<Map<String, dynamic>> commentCard = [
    {
      'image': ImageReviewHotel.jamesChristin,
      'title': 'James Christin',
      'isImage': false,
      'like': '24',
      'likeCopy': '3',
    },
    {
      'image': ImageReviewHotel.christinJames,
      'title': 'Christin James',
      'isImage': true,
      'like': '14',
      'likeCopy': '1',
    },
  ];
  List<double> initialRating = [5, 4, 3, 2, 1];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SizedBox(
        height: height,
        width: 411.w,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ImageCardThree(
              isColumn: false,
              onTapIcon: () {
                context.pop();
              },
              onTap: () {
                // showAboutDialog(context: context);
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const FilterReviewDraggableScrollableSheetWidget();
                  },
                );
              },
              title: 'Reviews',
              rightTitle: 130.w,
              lsftTitle: 150.w,
              imageIcon: ImageResultHotel.solid,
            ),
            Positioned.fill(
              top: 129,
              right: 25,
              left: 25,
              child: SingleChildScrollView(
                child: SizedBox(
                  width: 411.w,
                  child: Column(
                    children: [
                      InitialRatingWidget(initialRating: initialRating),
                      SizedBox(
                        width: 411.w,
                        height: MediaQuery.sizeOf(context).height * 0.91,
                        child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              width: 411.w,
                              padding: REdgeInsets.only(
                                right: 21,
                                left: 20,
                                top: 12,
                                bottom: 14,
                              ),
                              decoration: BoxDecoration(
                                color: AppColos.white,
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            width: 50.w,
                                            height: 50.w,
                                            child: Image.asset(
                                              commentCard[index]['image'],
                                              fit: BoxFit.fill,
                                            )),
                                        TitleWidget(
                                          title: commentCard[index]['title'],
                                          fontSizeTitle: 18.sp,
                                          fontWeightTitle: FontWeight.w800,
                                          colorTitle: Colors.black,
                                          distance: 6,
                                          colorSubTitle:
                                              const Color(0xff636363),
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          fontSizeSubTitle: 12.sp,
                                          fontWeightSubTitle: FontWeight.w400,
                                          subTitle: '24 minutes ago',
                                        ),
                                        RatingBar.builder(
                                          initialRating: 5,
                                          unratedColor: const Color(0xffE0DDF5),
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          itemSize: 20,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: Color(0xffFFC107),
                                          ),
                                          onRatingUpdate: (rating) {},
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.copyWith(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      const Color(0xff313131),
                                                ),
                                            text:
                                                'I’m very happy with the services. I think this is the best hotel in Seo…',
                                          ),
                                          TextSpan(
                                            text: ' See More',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.copyWith(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      const Color(0xff636363),
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(ImageReviewHotel.roomThree),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        Image.asset(ImageReviewHotel.roomTwo),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                        if (commentCard[index]['isImage'])
                                          Image.asset(ImageReviewHotel.roomOne),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 14.5.h,
                                    ),
                                    const Divider(
                                      color: Color(0xffe5e5e5),
                                    ),
                                    SizedBox(
                                      height: 14.5.h,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(ImageReviewHotel.like),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            TextWidget(
                                              text: commentCard[index]['like'],
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                            ),
                                            SizedBox(
                                              width: 51.w,
                                            ),
                                            Image.asset(
                                                ImageReviewHotel.likeCopy),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            TextWidget(
                                              text: commentCard[index]
                                                  ['likeCopy'],
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                        Image.asset(ImageReviewHotel.circle),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => const SizedBox(
                            height: 20,
                          ),
                          itemCount: commentCard.length,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class InitialRatingWidget extends StatelessWidget {
  const InitialRatingWidget({
    super.key,
    required this.initialRating,
  });

  final List<double> initialRating;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 411.w,
      padding: REdgeInsets.all(20),
      decoration: BoxDecoration(
          color: AppColos.white, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          SizedBox(
            width: 100.w,
            height: 100.h,
            child: Center(
              child: Column(
                children: [
                  TextWidget(
                    text: '4.9',
                    fontSize: 36.h,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffffc107),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  const TitleWidget(
                    title: 'of 5',
                    fontSizeTitle: 16,
                    fontWeightTitle: FontWeight.w500,
                    colorTitle: Colors.black,
                    subTitle: '(9876 Reviews)',
                    fontSizeSubTitle: 12,
                    fontWeightSubTitle: FontWeight.w500,
                    colorSubTitle: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 25.w,
          ),
          SizedBox(
            width: 192.w,
            height: 135.h,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(
                height: 5.h,
              ),
              padding: EdgeInsets.zero,
              itemCount: initialRating.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    RatingBar.builder(
                      initialRating: initialRating[index],
                      unratedColor: const Color(0xffE0DDF5),
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemSize: 20,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Color(0xffFFC107),
                      ),
                      onRatingUpdate: (rating) {
                        if (kDebugMode) {
                          print(rating);
                        }
                      },
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    const Expanded(
                        child: Divider(
                      color: Color(0xffE5E5E5),
                    ))
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
