import 'package:flutter/material.dart';

class ActiveCheckBoxContainerCircle extends StatelessWidget {
  const ActiveCheckBoxContainerCircle({ super.key,
    required this.width,
    required this.colorActive,
    this.shape=BoxShape.circle,
  });

  final double? width;
  final Color? colorActive;

  final BoxShape shape;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        shape:shape,
        color: colorActive,
        
      ),
    );
  }
}