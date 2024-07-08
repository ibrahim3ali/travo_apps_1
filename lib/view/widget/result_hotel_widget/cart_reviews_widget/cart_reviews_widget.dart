import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

import '../cart_list_price_and_buttons_widget/cart_list_price_and_buttons_widget.dart';
import '../row_title_widget/row_title_widget.dart';

class CartReviewsWidget extends StatefulWidget {
  const CartReviewsWidget({
    super.key,
    required this.cartReviews,
    this.onPressedFavorite,
  });

  final List<Map<String, dynamic>> cartReviews;
  final void Function()? onPressedFavorite;

  @override
  State<CartReviewsWidget> createState() => _CartReviewsWidgetState();
}

class _CartReviewsWidgetState extends State<CartReviewsWidget> {
  final List<String> items = [
    'Item 1',
    'Item 3',
    'Item 2',
  ];
  final Set<String> favoriteItems = {};
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      itemBuilder: (context, index) {
        final item = items[index];
        final isFavourite = favoriteItems.contains(item);
        return Container(
          width: 411,
          decoration: BoxDecoration(
            color: AppColos.white,
            borderRadius: BorderRadius.circular(15.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                SizedBox(
                  width: 350.w,
                  child: Image.asset(
                    fit: BoxFit.fill,
                    widget.cartReviews[index]['image'],
                  ),
                ),
                Positioned(
                  right: 0,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (isFavourite) {
                          favoriteItems.remove(item);
                        } else {
                          favoriteItems.add(item);
                        }
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      size: 16,
                      color: isFavourite
                          ? const Color(0xffF77777)
                          : AppColos.white,
                    ),
                  ),
                )
              ]),
              Padding(
                padding: const EdgeInsets.only(
                  top: 14,
                  left: 20,
                  right: 20,
                  bottom: 19,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: widget.cartReviews[index]['title'],
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RowTitleWidget(
                      icon: Icons.location_pin,
                      colorIcon: const Color(0xffF77777),
                      distance: 8.02,
                      title: widget.cartReviews[index]['map'],
                      supTitle: widget.cartReviews[index]['mapDestination'],
                      fontSizeTitle: 12,
                      fontSizeSubTitle: 10,
                      fontWeightSubTitle: FontWeight.w400,
                      fontWeightTitle: FontWeight.w400,
                      colorTitle: Colors.black,
                      colorSubTitle: const Color(0xffb1b1b1),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    RowTitleWidget(
                      icon: Icons.star,
                      colorIcon: const Color(0xffFFC107),
                      distance: 8,
                      title: widget.cartReviews[index]['rieviewsNumber'],
                      supTitle: widget.cartReviews[index]['rieviewsTitle'],
                      fontSizeTitle: 14,
                      fontSizeSubTitle: 14,
                      fontWeightSubTitle: FontWeight.w400,
                      fontWeightTitle: FontWeight.w400,
                      colorTitle: Colors.black,
                      colorSubTitle: const Color(0xffb1b1b1),
                    ),
                    const SizedBox(
                      height: 14.5,
                    ),
                    const Divider(
                      color: Color(0xffe5e5e5),
                    ),
                    CartListPriceAndButtonsWidget(
                      cartReviews: widget.cartReviews,
                      index: index,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      itemCount: 3,
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
    );
  }
}
