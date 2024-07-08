import 'package:flutter/material.dart';

import 'dotlndicator_widget.dart';

class Dotlndicator extends StatelessWidget {
  const Dotlndicator({
    super.key,
    required this.image,
    required int index,
       this.colorActive = const Color(0xffFE9C5E),
    this.colorNotActive = const Color(0xffD8D8D8),
  
  }) : _index = index;

  final List<Map<String, dynamic>> image;
  final int _index;
  final Color colorActive, colorNotActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        image.length,
        (index) => DotlndicatorWidget(
colorActive: colorActive,
colorNotActive: colorNotActive,
          isActive: index == _index,
        ),
      ),
    );
  }
}
