import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/view/widget/result_hotel_widget/cart_reviews_widget/cart_reviews_widget.dart';

import '../../../../core/constants/assets.dart';
import '../../../core/app_routers/routes_name.dart';
import '../../dtomic/image_card/image_card_app_bar_three.dart';
import '../../widget/result_hotel_widget/filter_hotel_draggable_scrollable_sheet_widget/filter_hotel_draggable_scrollable_sheet_widget.dart';

class ResultHotel extends StatefulWidget {
  const ResultHotel({super.key});

  @override
  State<ResultHotel> createState() => _ResultHotelState();
}

class _ResultHotelState extends State<ResultHotel> {
  int index = 0;

  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> cartReviews = [
      {
        'image': ImageResultHotel.royal,
        'isFavorite': false,
        'onPressed': () {
          context.pushNamed(RoutesName.selectRoom);
        },
        'title': 'Royal Palm Heritage',
        'map': 'Purwokerto, Jateng - ',
        'mapDestination': '364 m from destination',
        'rieviewsNumber': '4.5 ',
        'rieviewsTitle': '(3241 reviews)',
        'number': "\$143"
      },
      {
        'image': ImageResultHotel.grand,
        'isFavorite': false,
        'onPressed': () {
          context.pushNamed(RoutesName.selectRoom);
        },
        'title': 'Grand Luxury’s',
        'map': 'Banyumas, Jateng - ',
        'mapDestination': '2.3 km from destination',
        'rieviewsNumber': '4.2 ',
        'rieviewsTitle': '(2456 reviews)',
        'number': '\$234'
      },
      {
        'image': ImageResultHotel.orlando,
        'isFavorite': false,
        'onPressed': () {
          context.pushNamed(RoutesName.selectRoom);
        },
        'title': 'The Orlando House',
        'map': 'Ajibarang, Jateng - ',
        'mapDestination': '1.1 km from destination',
        'rieviewsNumber': '3.8 ',
        'rieviewsTitle': '(1234 reviews)',
        'number': '\$132'
      },
    ];
    final height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SizedBox(
        height: height,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ImageCardAppBarThree(
              isColumn: false,
              onTapIcon: () {
                context.pop();
              },
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const FilterHotelDraggableScrollableSheetWidget();
                  },
                );
              },
              title: 'Hotels',
              lsftTitle: 130.w,
              // rightTitle: 120.w,
              imageIcon: ImageResultHotel.solid,
              // cartReviews: cartReviews,
            ),
            Positioned.fill(
              top: 120.h,
              child: CartReviewsWidget(
                cartReviews: cartReviews,
                onPressedFavorite: () {
                  setState(() {
                    cartReviews[index]['isFavorite'] =
                        !cartReviews[index]['isFavorite'];
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
