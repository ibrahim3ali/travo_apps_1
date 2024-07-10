import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

class CartIconWidget extends StatelessWidget {
  const CartIconWidget({
    super.key,
    required this.cartIcon,
  });

  final List<Map<String, dynamic>> cartIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 400.w,
      height: MediaQuery.sizeOf(context).height * 0.16,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: cartIcon[index]['onTap'],
                child: Container(
                  width: 112.w,
                  height: 90.h,
                  decoration: BoxDecoration(
                    color: cartIcon[index]['color'],
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                  child: Image.asset(cartIcon[index]['image']),
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              TextWidget(
                text: cartIcon[index]['text'],
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ],
          );
        },
        itemCount: cartIcon.length,
        separatorBuilder: (context, index) => SizedBox(
          width: 15.w,
        ),
      ),
    );
  }
}
