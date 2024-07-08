import 'package:flutter/material.dart';

import '../../../dtomic/text_widget/text_widget.dart';

class ORWidget extends StatelessWidget {
  const ORWidget({
    super.key,
    required this.text,
    this.left = 18,
    this.right = 18,
  });
  final String text;
  final double? left;
  final double? right;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(child: Divider()),
        SizedBox(
          width: right,
        ),
        TextWidget(
          text: text,
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        SizedBox(
          width: left,
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}
