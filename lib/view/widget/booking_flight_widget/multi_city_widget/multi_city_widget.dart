import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../dtomic/text_widget/text_widget.dart';
import '../one_way_widget/one_way_widget.dart';

class MultiCityWidget extends StatelessWidget {
  const MultiCityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 411.w,
      child: Column(
        children: [
          TextWidget(
            text: 'Flight 1',
            fontSize: 16.sh,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          const OneWayWidget(),
          SizedBox(
            height: 20.h,
          ),
          TextWidget(
            text: 'Flight 2',
            fontSize: 16.sh,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          // const OneWayWidget(),
        ],
      ),
    );
  }
}
