import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travo_apps_1/view/dtomic/text_widget/text_widget.dart';

import '../one_way_widget/one_way_widget.dart';

class FlightTextWidget extends StatelessWidget {
  const FlightTextWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          text: text,
          fontSize: 16.sh,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        const OneWayWidget(),
      ],
    );
  }
}
