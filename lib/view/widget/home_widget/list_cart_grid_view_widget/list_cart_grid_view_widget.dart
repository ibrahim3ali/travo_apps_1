import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

import '../../../../core/constants/app_colos.dart';

class ListCartGridViewWidget extends StatefulWidget {
  const ListCartGridViewWidget({
    super.key,
    required this.listcartGridView,
  });

  final List<Map<String, dynamic>> listcartGridView;

  @override
  State<ListCartGridViewWidget> createState() => _ListCartGridViewWidgetState();
}

class _ListCartGridViewWidgetState extends State<ListCartGridViewWidget> {
  final Set<String> favoriteItems = {};

  final List<String> items = [
    'Item 1',
    'Item 3',
    'Item 2',
    'Item 4',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 411.w,
      height: MediaQuery.sizeOf(context).height * 0.55,
      child: MasonryGridView.count(
        mainAxisSpacing: 25,
        crossAxisSpacing: 25,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        itemCount: widget.listcartGridView.length,
        itemBuilder: (context, index) {
          final item = items[index];
          final isFavourite = favoriteItems.contains(item);
          return Stack(
            children: [
              SizedBox(
                width: 190.w,
                height: widget.listcartGridView[index]['height'],
                child: Image.asset(
                  widget.listcartGridView[index]['image'],
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isFavourite) {
                        favoriteItems.remove(item);
                      } else {
                        favoriteItems.add(item);
                      }
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    size: 20.sp,
                    color:
                        isFavourite ? const Color(0xffF77777) : AppColos.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Column(
                  children: [
                    TextWidget(
                      text: widget.listcartGridView[index]['text'],
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: 55.w,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white38,
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xffFFC107),
                            ),
                            TextWidget(
                              text: '4.5',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
