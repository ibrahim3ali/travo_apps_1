import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImagePageViewWidget extends StatefulWidget {
  const ImagePageViewWidget({
    super.key,
    required this.image,
    required int index,
  }) : _index = index;

  final List<Map<String, dynamic>> image;
  final int _index;

  @override
  State<ImagePageViewWidget> createState() => _ImagePageViewWidgetState();
}

class _ImagePageViewWidgetState extends State<ImagePageViewWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 411.w,
      height: 375.h,
      child: PageView.builder(
        itemCount: widget.image.length,
        onPageChanged: (pageIndex) {
          setState(() {
            pageIndex = widget._index;
          });
        },
        itemBuilder: (context, index) {
          return Padding(
            padding: widget.image[widget._index]['padding']!,
            child: SizedBox(
              width: widget.image[widget._index]['width']!,
              child: SizedBox(
                child: Image.asset(
                  fit: BoxFit.fill,
                  widget.image[widget._index]['image'],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
