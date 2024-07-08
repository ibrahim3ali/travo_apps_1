import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/assets.dart';
import '../../../dtomic/text_widget/text_widget.dart';

class CardIconWidget extends StatefulWidget {
  const CardIconWidget({super.key});

  @override
  State<CardIconWidget> createState() => _CardIconWidgetState();
}

class _CardIconWidgetState extends State<CardIconWidget> {
  List<Map<String, dynamic>> listIcon = [
    {
      'title': 'Restaurant',
      'image': ImageHotelPicture.restaurantIcon,
    },
    {
      'title': 'Wifi',
      'image': ImageHotelPicture.wifiIcon,
    },
    {
      'title': 'Currency Exchange',
      'image': ImageHotelPicture.currencyExchangeIcon,
    },
    {
      'title': '24-hour Front Desk',
      'image': ImageHotelPicture.hourFrontDeskIcon,
    },
    {
      'title': 'More',
      'image': ImageHotelPicture.moreIcon,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 411,
      height: 82,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return SizedBox(
            width: 60.w,
            child: Column(
              children: [
                Image.asset(
                  listIcon[index]['image'],
                ),
                const SizedBox(
                  height: 10,
                ),
                TextWidget(
                  text: listIcon[index]['title'],
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 16,
        ),
        itemCount: listIcon.length,
      ),
    );
  }
}
