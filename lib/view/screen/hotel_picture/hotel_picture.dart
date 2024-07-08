import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:travo_apps_1/core/constants/app_colos.dart';

import '../../../../core/constants/assets.dart';
import '../../dtomic/dotlndicator/dotlndicator.dart';
import '../../widget/hotel_picture_Widget/detail_hotel_draggable_scrollable_sheet_widget/detail_hotel_draggable_scrollable_sheet_widget.dart';

class HotelPicture extends StatefulWidget {
  const HotelPicture({super.key});

  @override
  State<HotelPicture> createState() => _HotelPictureState();
}

class _HotelPictureState extends State<HotelPicture> {
  final int _index = 0;
  List<Map<String, dynamic>> image = [
    {},
    {},
    {},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Image.asset(
              ImageHotelPicture.roomIcon,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 80,
            left: 25,
            child: InkWell(
              onTap: () {
                context.pop();
              },
              child: Container(
                width: 40.w,
                height: 40.w,
                decoration: const BoxDecoration(
                  color: AppColos.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.arrow_back_sharp,
                    color: AppColos.nero,
                    size: 18.sp,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 80,
            right: 25,
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 40.w,
                height: 40.w,
                decoration: const BoxDecoration(
                  color: AppColos.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.favorite,
                    color: const Color(0xffF5DCDC),
                    size: 18.sp,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 155,
            right: 155,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const DetailHotelDraggableScrollableSheetWidget();
                  },
                );
              },
              child: SizedBox(
                width: 200.w,
                height: 200.w,
                child: Dotlndicator(
                  colorActive: AppColos.white,
                  colorNotActive: AppColos.white,
                  image: image,
                  index: _index,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
