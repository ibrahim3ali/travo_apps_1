import 'package:flutter/material.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';
import 'package:travo_apps_1/view/dtomic/button/buttons.dart';
import 'package:travo_apps_1/view/dtomic/title_widget/title_widget.dart';

class CartListPriceAndButtonsWidget extends StatelessWidget {
  const CartListPriceAndButtonsWidget({
    super.key,
    required this.cartReviews,
    required this.index,
  });

  final List<Map<String, dynamic>> cartReviews;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleWidget(
          title: cartReviews[index]['number'],
          crossAxisAlignment: CrossAxisAlignment.start,
          distance: 10,
          fontSizeTitle: 24,
          fontWeightTitle: FontWeight.w800,
          fontSizeSubTitle: 10,
          fontWeightSubTitle: FontWeight.w400,
          subTitle: '/night',
        ),
        Buttons(
          onPressed: cartReviews[index]['onPressed'],
          borderColor: AppColos.linear,
          borderRadius: 30,
          width: 150,
          height: 50,
          fontSizeText: 16,
          fontWeightText: FontWeight.w500,
          text: 'Book a room',
          isText: true,
        ),
      ],
    );
  }
}
